# swatch docker container
Docker containers for swatch development and testing.
Run with:
```
docker run -v <your path to swatch folder>:/opt/swatch -t -i kreczko/swatch 
# example
# docker run -v /home/kreczko/workspace/cactus/cactuscore/swatch:/opt/swatch -t -i kreczko/swatch 
```

You should now be inside the container and can find/compile/test your code via
```
cd /opt/swatch
# compile
make jobs=4
# run tests
./test/bin/boostTest.exe --log_level=all
```
