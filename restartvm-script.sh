if lsusb | grep "04a9:183c" > /dev/null
then
  echo "USB device is connected. Skipping shutdown."
else
  # Stop the VM
  virsh shutdown Linux

  # Wait for the printer to be power cycled
  echo "Please power cycle the printer."
  while [ true ]
  do
    if lsusb | grep "04a9:183c" > /dev/null
    then
      break
    fi
    sleep 5
  done

  # Start the VM
  virsh start Linux
fi
