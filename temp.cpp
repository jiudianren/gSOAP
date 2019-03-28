static_assert(is_completion_handler< \
    typename ::boost::asio::async_result< \
    typename ::boost::asio::decay<WriteHandler>::type, void(error_code, std::size_t)>::completion_handler_type, void(error_code, std::size_t)>::value, \
    "CompletionHandler signature requirements not met"); \
    boost::asio::async_completion<WriteHandler, void(error_code, std::size_t)> init{handler}
