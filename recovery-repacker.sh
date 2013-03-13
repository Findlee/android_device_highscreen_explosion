# Recovery-uboot-Repacker v.0.1 by Findlee

if
test -d ../../../out/target/product/explosion/recovery/root
then echo "Скомпилированное Recovery найдено!"
else echo "Скомпилированное Recovery не найдено!"
exit 
fi

sleep 2

echo "Переход в папку с Recovery"
cd ../../../out/target/product/explosion/recovery/root/

echo "Упаковка Recovery в cpio.gz"
find . | cpio -o -H newc -C 512 | gzip -n > ../../ramdisk.cpio.gz

cd ../../
echo "Упаковка ramdisk.cpio.gz в uboot-образ"
../../../../device/highscreen/explosion/utilites/mkimage -A ARM -O Linux -T ramdisk -C none -a 0x41000000 -e 0x41000000 -n ramdisk -d ramdisk.cpio.gz ramdisk

echo "Упаковка ramdisk'a и ядра в image"
../../../../device/highscreen/explosion/utilites/mkbootimg --kernel kernel --ramdisk ramdisk --cmdline '' --base 0x10000000 --pagesize 2048 -o recovery-uboot.img

echo "Образ recovery-uboot.img готов!"
