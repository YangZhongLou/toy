if exist "build\" (
    echo "found directory build" 
) else (
    mkdir build
)

cd build
cmake ..