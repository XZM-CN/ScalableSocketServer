:: 删除Debug目录下的所有文件
:: /f 表示强制删除文件 
:: /s 表示子目录都要删除该文件 
:: /q 表示无声，不提示 
:: /a 根据属性选择要删除的文件 
:: R 只读文件 S 系统文件 H 隐藏文件 A 存档文件 - 表示“否”的前缀 
:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
del  Debug /f /s /q /a

:: 删除Debug目录
:: /S 除目录本身外，还将删除指定目录下的所有子目录和文件。用于删除目录树
:: /Q 安静模式，带/S删除目录树时不要求确认
rd   /s /Q Debug

:: 删除Release目录下的所有文件
del  Release /f /s /q /a

:: 删除Debug目录
rd   /s /Q Release

:: 删除ipch目录，以及ipch目录下的所有文件
rd   /s /Q ipch

del  Sockets.sdf /f /s /q /a
del  Sockets.v12.suo /f /s /q /a
del  Sockets.VC.db /f /s /q /a

:: 删除Debug的生成临时文件目录
rd   /s /Q "asio async server/Debug"
rd   /s /Q "asio server/Debug"
rd   /s /Q "TCP client/Debug"
rd   /s /Q "TCP IOCP server/Debug"
rd   /s /Q "TCP select server/Debug"
rd   /s /Q "TCP server/Debug"
rd   /s /Q "Thread pool test/Debug"
rd   /s /Q "UDP listener/Debug"
rd   /s /Q "UDP source/Debug"
rd   /s /Q "UnitTests/Debug"

:: 删除Release的生成临时文件目录
rd   /s /Q "asio async server/Release"
rd   /s /Q "asio server/Release"
rd   /s /Q "TCP client/Release"
rd   /s /Q "TCP IOCP server/Release"
rd   /s /Q "TCP select server/Release"
rd   /s /Q "TCP server/Release"
rd   /s /Q "Thread pool test/Release"
rd   /s /Q "UDP listener/Release"
rd   /s /Q "UDP source/Release"
rd   /s /Q "UnitTests/Release"

pause