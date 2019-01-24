	 
	 WsControlService::initialize
	{
	bool InitSoapProxyMgr(int iMNOId, const char *szMyEntityId, SOAP_ENTITIES myEntityType)
	{
	    RSPNEInfoCache::Instance().Initialize(iMNOId); //������mno
	    s_strMyEntityId = szMyEntityId;                            //entityed_id Ϊsm_sr��ID
	    s_soapProxyMgrImpl.SetEntityType(myEntityType);//������ʵ������
	    return true;
	}
	
	 if (!(GetMySoapHeaderInfo(std::nothrow)))   ======>ת��2
	        {
	            LOG_ERROR << "GetMySoapHeaderInfo for my Entity-Id:" << SMSR::g_strMyEntityId << " failed";
	            return false;
	        }
	}


2====
======================

	std::shared_ptr<SoapHeaderInfo> GetMySoapHeaderInfo(std::nothrow_t)
	{
	    std::lock_guard<std::mutex> guard(s_mtxGetMySoapHeader);
	    if (s_soapProxyMgrImpl.NeedRefresh() || !s_mySoapHeaderInfo)
	    {
	        s_mySoapHeaderInfo = s_soapProxyMgrImpl.QuerySoapHeader(s_strMyEntityId.c_str());
	    }
	    return s_mySoapHeaderInfo;
	}



3=====
===================
    static std::unique_ptr<SoapHeaderInfo> QuerySoapHeader(const char *oid, SOAP_ENTITIES entity,
            bool bQueryResponseSoapHeaderInfo = true)
    {


    RSPNEInfoCache::Instance().QueryAttrsByEntityId(oid, entity);//ͨ�� mno_id ��oid ����ʵ�����Ͳ������� ת�� 4

        auto it = mapAttrs.find("Address");
        if (it != mapAttrs.end() && it->second.size() == 1 && it->second.front().length())
        {
            soapHeader->strAddress = it->second.front();
            soapHeader->strEntityId = oid;
            it = mapAttrs.find("EntityName");
            if (it != mapAttrs.end() && it->second.size() == 1 && it->second.front().length())
            {
                soapHeader->strEntityName = it->second.front();
            }
            it = mapAttrs.find("ResponseEntityId");
            if (it != mapAttrs.end() && it->second.size() == 1 && it->second.front().length())
            {
                soapHeader->strResponseEntityId = it->second.front();
                LOG_DEBUG  <<  " soapHeader->strResponseEntityId "  << soapHeader->strResponseEntityId;

                soapHeader->pResponseSoapHeaderInfo = QuerySoapHeader(soapHeader->strResponseEntityId.c_str(), entity,
                        false);
                if (!soapHeader->pResponseSoapHeaderInfo)
                {
                    return std::unique_ptr<SoapHeaderInfo>();
                }
            }
        }
        else
        {
            return std::unique_ptr<SoapHeaderInfo>();
        }

        return soapHeader;
    }



4
=================
std::map<std::string, std::vector<std::string>> RSPNEInfoCache::QueryAttrsByEntityId(const std::string &strEntityId,
        TDBRSPNE::EN_Category category)
{
    {
        auto lock = mutex_.lock_for_read();
        auto ret = impl_->QueryAttrsByEntityId(strEntityId, category);
        if (!ret.empty())
        {
            return ret;
        }
    }

        if (impl_->Refresh() == false)
        return impl_->QueryAttrsByEntityId(strEntityId, category);
    }
}








5
=======================
    bool Refresh()
    {
        LOG_DEBUG <<  " m_iMNOId : "  << m_iMNOId;
        // Refresh MNO
        {
            auto mnoInfo = m_pDBRSPNE->QueryMNOInfoByMNOId(m_iMNOId); ===��ת6
                auto attrs = m_pDBRSPNEAttrs->QueryAttrsByEntityId(std::get<0>(mno));
        }

        // Refresh SMSR
        {
            auto smsrInfo = m_pDBRSPNE->QuerySMSRInfoByMNOId(m_iMNOId);
            for (auto &smsr : smsrInfo)
            {
                auto attrs = m_pDBRSPNEAttrs->QueryAttrsByEntityId(std::get<0>(smsr));  //ת 8 
                if (attrs.find("Address") == attrs.end() && std::get<1>(smsr).length())
                {
                    attrs.emplace(std::string("Address"), std::vector<std::string> { std::move(std::get<1>(smsr)) });
                }
                if (attrs.size())
                {
                    m_SMSRNEInfoCache.emplace(std::move(std::get<0>(smsr)), std::move(attrs));
                }
            }
        }

        g_iRSPNEInfoCacheVersion++;
        return true;
    }


6==
 NE_TYPE 50 ��Ӫ��

        "SELECT ENTITY_ID, NE_ADDRESS\n"
        "  FROM RSP_NE\n"
        " WHERE MNO_ID=:MNO_ID AND NE_TYPE='50' AND STATE='1' AND\n"
        "       (ENTITY_ID IS NOT NULL AND ENTITY_ID!='') AND\n"
        "       (NE_ADDRESS IS NOT NULL AND NE_ADDRESS!='')";
====


7==
SELECT ATTRIBUTE_KEY, VALUE
  FROM RSP_NE_ATTRS
 WHERE ENTITY_ID = :ENTITY_ID
 ORDER BY SEQUENCE
)";



8
====
     "SELECT ENTITY_ID, NE_ADDRESS\n"
        "  FROM RSP_NE\n"
        " WHERE MNO_ID=:MNO_ID AND NE_TYPE='20' AND STATE='1' AND\n"
        "       (ENTITY_ID IS NOT NULL AND ENTITY_ID!='') AND\n"
        "       (NE_ADDRESS IS NOT NULL AND NE_ADDRESS!='')";



