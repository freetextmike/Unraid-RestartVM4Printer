# Check if the VM is running
if virsh list | grep "Linux" | grep "running" > /dev/null
then
  # VM is running
  echo "VM Linux is running."
  
  # Check if the USB device is connected
  if lsusb | grep "04a9:183c" > /dev/null
  then
    # USB device is connected, no need to do anything
    echo "USB device is connected. Skipping VM shutdown."
  else
    # USB device is not connected, shut down the VM
    echo "USB device is not connected. Shutting down VM Linux."
    virsh shutdown Linux
  fi
else
  # VM is not running
  echo "VM Linux is not running."
  
  # Check if the USB device is connected
  if lsusb | grep "04a9:183c" > /dev/null
  then
    # USB device is connected, wait for 10 seconds and start the VM
    echo "USB device is connected. Waiting for 10 seconds before starting VM Linux."
    sleep 10
    virsh start Linux
  else
    # USB device is not connected, no need to do anything
    echo "USB device is not connected. Skipping VM start."
  fi
fi
