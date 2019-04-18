#include "MessageHandler.h"

MessageHandler::MessageHandler(QObject *parent) :
    QObject(parent)
{
}

QQmlApplicationEngine *MessageHandler::m_qmlEngine = nullptr;
QObject *MessageHandler::m_qmlMessageHandler = nullptr;

void MessageHandler::setQmlEngine(QQmlApplicationEngine *engine)
{
    MessageHandler::m_qmlEngine = engine;
}

void MessageHandler::handler(QtMsgType messageType, const QMessageLogContext &context, const QString &message)
{
    Q_UNUSED(context)

    if (messageType == QtFatalMsg)
        abort();

    QString messageTypeString;

    switch (messageType) {
    case QtDebugMsg:
        messageTypeString = "Debug";
        break;
    case QtInfoMsg:
        messageTypeString = "Info";
        break;
    case QtWarningMsg:
        messageTypeString = "Warning";
        break;
    case QtCriticalMsg:
        messageTypeString = "Critical";
        break;
    case QtFatalMsg:
        messageTypeString = "Fatal";
        break;
    }

    QString consoleMessageString = QString("%1: %2\n").arg(messageTypeString).arg(message);

    QTextStream textStream(stderr);
    textStream<<consoleMessageString;

    if (m_qmlEngine)
    {
        if (m_qmlMessageHandler == nullptr)
        {
            m_qmlMessageHandler = m_qmlEngine->rootObjects().first()->findChild<QObject*>("messageHandler");
        }

        if (m_qmlMessageHandler != nullptr)
        {
            QString guiMessageString = QString("%1: %2").arg(messageTypeString).arg(message);
            QMetaObject::invokeMethod(m_qmlMessageHandler, "messageReceived", Q_ARG(QString, guiMessageString));
        }
    }
}
