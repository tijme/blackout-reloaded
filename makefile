INPUTNAME := BlackoutReloaded
BOFNAME := BlackoutReloaded
CC_x64 := x86_64-w64-mingw32-gcc

all:
	$(CC_x64) -Wl,--stack,4096000 -c ./$(INPUTNAME).c -o ./$(BOFNAME).o -masm=intel -DBOF 
	$(CC_x64) ./$(INPUTNAME).c -o ./$(BOFNAME).exe -masm=intel -lole32 -loleaut32 -lntdll -ladvapi32 -luser32

clean:
	rm ./$(BOFNAME).*.exe ./$(BOFNAME).*.o