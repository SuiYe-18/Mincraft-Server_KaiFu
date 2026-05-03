@echo off
chcp 65001 >nul
echo ==============================================
echo  MC 网页开服核心 - 一键编译打包为 JAR
echo  自动编译 Java → MCServerCore.jar
echo ==============================================
echo.

:: 切换到 java-core 目录
cd /d "java-core"

:: 创建临时编译目录
mkdir bin 2>nul
mkdir out 2>nul

:: 编译所有 Java 文件
echo [1/3] 正在编译 Java 源码...
javac -d bin src/main/java/com/mcpanel/*.java

:: 生成清单文件
echo Main-Class: com.mcpanel.Main> bin/manifest.txt

:: 打包成 jar
echo [2/3] 正在生成 Jar 文件...
jar -cvfm out/MCServerCore.jar bin/manifest.txt -C bin .

:: 复制到最终目录
echo [3/3] 复制 Jar 到运行目录...
copy /y out\MCServerCore.jar ..\binaries\ >nul
copy /y out\MCServerCore.jar ..\java-core\ >nul

cd ..
echo.
echo ==============================================
echo ✅ 编译完成！
echo 📦 生成文件：
echo    binaries/MCServerCore.jar
echo    java-core/MCServerCore.jar
echo ==============================================
echo.
pause