loadkeys br-abnt2
iwctl
export "LANG=pt_BR.UTF-8"
locale-gen
rm /etc/pacman.d/mirrorlist
reflector --country Brazil >> /etc/pacman.d/mirrorlist
mountpoint=/mnt
echo " ======= START ========="
sleep 2
echo "======= FORMATACAO ======="
sleep 4
echo "====== Digite o nome do HD - TIPO BLOCO (/dev/sda, /dev/hda, /dev/nvme...)"
read hd
cfdisk $hd
echo "====== ETAPA DE PARTICIONAMENTO ======="
sleep 4
echo "**** Particao onde sera instalado o grub e scripts de carregamento do sistema - UEFI ou MBR *****"
echo "Digite o caminho da particao de BOOT - FAT32 - (/dev/sda1, /dev/sda2...)"
read particao
if [[ $particao  ]]; then
	mkfs.fat -F32 $particao
else
   echo "Ocorreu um erro ao tentar particionar. Tentando mais uma vez "
   echo "Digite o caminho da particao de BOOT - FAT32 - (/dev/sda1, /dev/sda2...)"
   read partitiontry
   if [[ $partitiontry  ]]; then
   		mkfs.fat -F32 $partitiontry
  	
   else
   		echo "INSTALACAO MAL SUCEDIDA. ENCERRANDO SCRIPT..."
		sleep 4
  		exit
   fi

fi

echo "Digite o caminho da particao do SISTEMA - EXT4 - (/dev/nvme, /dev/sda2"
read system
mount $system $mountpoint
pacstrap $mountpoint git nano vim base-devel wget curl base-devel linux-lts linux-firmware
arch-chroot $mountpoint

