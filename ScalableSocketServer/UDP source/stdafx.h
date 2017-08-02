#pragma once

#include "targetver.h"
#define _WINSOCK_DEPRECATED_NO_WARNINGS
#define NO_TRACING
#define Use_send
#define Use_recv
#define _CRT_SECURE_NO_WARNINGS
//#include <windows.h>
#include <winsock2.h>
#include <ws2tcpip.h>
#include <Mswsock.h>
#include <tchar.h>
#include <cassert>
#include <fstream>
#include <iostream>
#include <vector>
#include <list>
#include <limits>
#include <boost/program_options.hpp>
#include <chrono>
#include <thread>
#include <mutex>
#include <memory>

