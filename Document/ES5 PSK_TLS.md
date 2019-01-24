

	bool ES5ControlService::initialize(service_interface *ipc_service)
	{

	        if (g_SRCertsMgr.Initialize(ES5Functions::supportedMNOId, psk_server_cb) == false)
	        {
	            LOG_ERROR<< "ES5 no useful certificates found for RSP service for MNO-ID:" << ES5Functions::supportedMNOId;
	            return false;
	        }
	        g_SRCertsMgr.DupFromInstance();

	
	    return true;
	}
	
	
	
	
	
====================

	bool SRCertsMgr::__Initialize(int iMNOId)
	{
	 
	    m_pDBRSPCertificates->OpenByMNOId(0, iMNOId, TDBRSPNE::EN_Category::SR);
	    
	    "SELECT *\n"
        "  FROM RSP_CERTIFICATES\n"
        " WHERE (MNO_ID=:MNO_ID1 OR MNO_ID=:MNO_ID2) AND (CATEGORY=:CATEGORY OR CATEGORY=0)\n"
        " ORDER BY MNO_ID DESC";
	    
	    TRSPCertificates val;
	    while (m_pDBRSPCertificates->NextByMNOId(val))
	    {
	        LoadAllCerts(val);
	        val.Clear();
	    }
	
	    if (PreCertsTuple() == false)
	    {
	        return false;
	    }
	
	    m_bInitialized = PrepareTlsCtx();
	    return m_bInitialized;
	}