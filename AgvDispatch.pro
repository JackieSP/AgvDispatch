#-------------------------------------------------
#
# Project created by QtCreator 2018-04-08T15:53:55
#
#-------------------------------------------------

QT       -= gui
QT += core network
#QT       -= core

TARGET = AgvDispatch
CONFIG   += console
CONFIG   -= app_bundle
CONFIG += c++11
TEMPLATE = app
QMAKE_CXXFLAGS += -std=c++11 -std=gnu++0x
QMAKE_CXXFLAGS += -Wno-unused-parameter

unix{
LIBS += -lsqlite3
LIBS += -ljsoncpp
}

win32{
win32:DEFINES += _CRT_SECURE_NO_WARNINGS
win32:DEFINES += _WINSOCK_DEPRECATED_NO_WARNINGS
INCLUDEPATH+=D:\thirdparty\sqlite\include
INCLUDEPATH+=D:\thirdparty\jsoncpp\include
LIBS+=D:\thirdparty\sqlite\lib\Debug\sqlite3.lib
LIBS+=D:\thirdparty\jsoncpp\lib\Debug\jsoncpp_static.lib
}

HEADERS += \
    agv.h \
    agvmanager.h \
    agvtask.h \
    agvtasknode.h \
    agvtasknodedothing.h \
    common.h \
    qyhtcpclient.h \
    taskmanager.h \
    sqlite3/CppSQLite3.h \
    network/networkconfig.h \
    network/sessionmanager.h \
    network/tcpsession.h \
    network/timer/timer.h \
    network/common/networkcommon.h \
    network/epoll/epoll_common.h \
    network/epoll/epoll.h \
    network/epoll/epollaccept.h \
    network/epoll/epollsocket.h \
    network/iocp/iocp_common.h \
    network/iocp/iocp.h \
    network/iocp/iocpsocket.h \
    network/iocp/iocpaccept.h \
    protocol.h \
    utils/noncopyable.h \
    msgprocess.h \
    usermanager.h \
    utils/threadpool.h \
    userlogmanager.h \
    usermanager.h \
    taskmaker.h \
    mapmap/mapbackground.h \
    mapmap/mapblock.h \
    mapmap/mapfloor.h \
    mapmap/mapgroup.h \
    mapmap/mappath.h \
    mapmap/mappoint.h \
    mapmap/mapspirit.h \
    mapmap/onemap.h \
    base64.h \
    utils/Log/spdlog/async_logger.h \
    utils/Log/spdlog/common.h \
    utils/Log/spdlog/formatter.h \
    utils/Log/spdlog/logger.h \
    utils/Log/spdlog/spdlog.h \
    utils/Log/spdlog/tweakme.h \
    utils/Log/spdlog/contrib/sinks/step_file_sink.h \
    utils/Log/spdlog/details/async_log_helper.h \
    utils/Log/spdlog/details/async_logger_impl.h \
    utils/Log/spdlog/details/file_helper.h \
    utils/Log/spdlog/details/log_msg.h \
    utils/Log/spdlog/details/logger_impl.h \
    utils/Log/spdlog/details/mpmc_blocking_q.h \
    utils/Log/spdlog/details/null_mutex.h \
    utils/Log/spdlog/details/os.h \
    utils/Log/spdlog/details/pattern_formatter_impl.h \
    utils/Log/spdlog/details/registry.h \
    utils/Log/spdlog/details/spdlog_impl.h \
    utils/Log/spdlog/sinks/android_sink.h \
    utils/Log/spdlog/sinks/ansicolor_sink.h \
    utils/Log/spdlog/sinks/base_sink.h \
    utils/Log/spdlog/sinks/dist_sink.h \
    utils/Log/spdlog/sinks/file_sinks.h \
    utils/Log/spdlog/sinks/msvc_sink.h \
    utils/Log/spdlog/sinks/null_sink.h \
    utils/Log/spdlog/sinks/ostream_sink.h \
    utils/Log/spdlog/sinks/sink.h \
    utils/Log/spdlog/sinks/stdout_sinks.h \
    utils/Log/spdlog/sinks/syslog_sink.h \
    utils/Log/spdlog/sinks/wincolor_sink.h \
    utils/Log/spdlog/sinks/windebug_sink.h \
    utils/Log/spdlog/fmt/fmt.h \
    utils/Log/spdlog/fmt/ostr.h \
    utils/Log/spdlog/fmt/bundled/format.h \
    utils/Log/spdlog/fmt/bundled/ostream.h \
    utils/Log/spdlog/fmt/bundled/posix.h \
    utils/Log/spdlog/fmt/bundled/printf.h \
    utils/Log/spdlog/fmt/bundled/time.h \
    agvImpl/ros/agv/rosAgv.h \
    agvImpl/ros/agv/linepath.h \
    mapmap/mapmanager.h \
    qunchuang/qunchuangtaskmaker.h \
    qunchuang/qunchuangnodethingget.h \
    qunchuang/qunchuangnodetingput.h \
    qunchuang/qunchuangtcsconnection.h \
    device/device.h \
    device/elevator/elevator.h \
    device/elevator/elevator_protocol.h \
    qunchuang/chipmounter/chipmounter.h \
    realagv.h \
    virtualagv.h \
    virtualrosagv.h \
    bezierarc.h \
    qingdao/qingdaonodetingcharge.h \
    qingdao/qingdaonodetingget.h \
    qingdao/qingdaonodetingput.h \
    qingdao/qingdaotaskmaker.h \
    qunchuang/msg.h \
    Dongyao/dyforklift.h \
    Dongyao/dyforkliftthingturn.h \
    Dongyao/dytaskmaker.h \
    Dongyao/dymappath.h \
    Dongyao/dyforkliftupdwms.h \
    Dongyao/dyforkliftthingfork.h \
    Dongyao/charge/chargemachine.h \
    Anting/attaskmaker.h \
    Anting/atforklift.h \
    Anting/atforkliftthingfork.h \
    Anting/station_pos.h

SOURCES += \
    agv.cpp \
    agvmanager.cpp \
    common.cpp \
    main.cpp \
    qyhtcpclient.cpp \
    taskmanager.cpp \
    sqlite3/CppSQLite3.cpp \
    network/sessionmanager.cpp \
    network/tcpsession.cpp \
    network/timer/timer.cpp \
    network/common/networkcommon.cpp \
    network/epoll/epoll.cpp \
    network/epoll/epollaccept.cpp \
    network/epoll/epollsocket.cpp \
    network/iocp/iocp.cpp \
    network/iocp/iocpsocket.cpp \
    network/iocp/iocpaccept.cpp \
    msgprocess.cpp \
    usermanager.cpp \
    userlogmanager.cpp \
    taskmaker.cpp \
    mapmap/mapbackground.cpp \
    mapmap/mapblock.cpp \
    mapmap/mapfloor.cpp \
    mapmap/mapgroup.cpp \
    mapmap/mapmanager.cpp \
    mapmap/mappath.cpp \
    mapmap/mappoint.cpp \
    mapmap/mapspirit.cpp \
    mapmap/onemap.cpp \
    base64.cpp \
    agvImpl/ros/agv/rosAgv.cpp \
    qunchuang/qunchuangtaskmaker.cpp \
    qunchuang/qunchuangnodethingget.cpp \
    qunchuang/qunchuangnodetingput.cpp \
    qunchuang/qunchuangtcsconnection.cpp \
    device/device.cpp \
    device/elevator/elevator.cpp \
    qunchuang/chipmounter/chipmounter.cpp \
    qunchuang/msg.cpp \
    device/elevator/elevator_protocol.cpp \
    realagv.cpp \
    virtualagv.cpp \
    virtualrosagv.cpp \
    bezierarc.cpp \
    qingdao/qingdaonodetingcharge.cpp \
    qingdao/qingdaonodetingget.cpp \
    qingdao/qingdaonodetingput.cpp \
    qingdao/qingdaotaskmaker.cpp \
    Dongyao/dyforklift.cpp \
    Dongyao/dyforkliftthingturn.cpp \
    Dongyao/dytaskmaker.cpp \
    Dongyao/dymappath.cpp \
    Dongyao/dyforkliftupdwms.cpp \
    Dongyao/dyforkliftthingfork.cpp \
    Dongyao/charge/chargemachine.cpp \
    Anting/attaskmaker.cpp \
    Anting/atforkliftthingfork.cpp \
    Anting/atforklift.cpp
