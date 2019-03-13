/*
 * Author: Tomas Nozicka
 */

#pragma once

#include <string>
#include <stdexcept>

namespace SuperiorMySqlpp
{
    class SuperiorMySqlppError : public std::runtime_error
    {
    public:
        explicit SuperiorMySqlppError(const std::string& message)
            : std::runtime_error{message}
        {
        }
    };


    class MysqlInternalError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;

        MysqlInternalError(const std::string& message,
                           const char* mysqlError,
                           unsigned errorCode_)
            : SuperiorMySqlppError(message + "\nMysql error: " + std::string(mysqlError))
            , errorCode{errorCode_}
        {
        }

        unsigned getErrorCode() const
        {
            return errorCode;
        }

    private:
        const unsigned errorCode {0};
    };

    class MysqlDataTruncatedError: public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class RuntimeError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class LogicError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class OutOfRange : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class InternalError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class PreparedStatementTypeError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class PreparedStatementBindError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class DynamicPreparedStatementTypeError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class DynamicPreparedStatementLogicError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class QueryError : public SuperiorMySqlppError
    {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    class QueryNotExecuted : public QueryError
    {
    public:
        using QueryError::QueryError;
    };

    /**
     * @brief Base class for multiple rows error
     */
    class UnexpectedRowsCountError : public SuperiorMySqlppError {
    public:
        using SuperiorMySqlppError::SuperiorMySqlppError;
    };

    /**
     * @brief This exception is thrown, when you attempt to read more rows in function `psReadValues`
     */
    class UnexpectedMultipleRowsError : public UnexpectedRowsCountError
    {
    public:
        using UnexpectedRowsCountError::UnexpectedRowsCountError;
    };

    /**
     * @brief Error when no results are returned
     */
    class UnexpectedZeroRowsError : public UnexpectedRowsCountError
    {
    public:
        using UnexpectedRowsCountError::UnexpectedRowsCountError;
    };
}
