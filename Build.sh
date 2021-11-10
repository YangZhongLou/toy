
if [ -d "build" ]; then
echo "found directory build"
else
mkdir build
fi

cd build
cmake ..