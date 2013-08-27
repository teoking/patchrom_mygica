#!/system/bin/sh
random()
{
  echo `expr $RANDOM % 256`
}
addr()
{
  printf "%02x:%02x:%02x:%02x:%02x:%02x\n" `random` `random` `random` `random` `random` `random`
}
if [ -f "/data/misc/bluetooth/bt_addr.conf" ];then
  if [ `head -n 1 /data/misc/bluetooth/bt_addr.conf` != "00:00:00:00:00:00" ];then
      exit 0;
  fi
fi
touch /data/misc/bluetooth/bt_addr.conf
chmod 666 /data/misc/bluetooth/bt_addr.conf
echo `addr` > /data/misc/bluetooth/bt_addr.conf
