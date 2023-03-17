# Check if the Docker container is running
if docker ps | grep "CUPS" > /dev/null
then
  # Container is running
  echo "Docker container CUPS is running."
  
  # Check if the USB device is connected
  if lsusb | grep "04a9:183c" > /dev/null
  then
    # USB device is connected, no need to do anything
    echo "USB device is connected. Skipping Docker container stop."
  else
    # USB device is not connected, stop the container
    echo "USB device is not connected. Stopping Docker container CUPS."
    docker stop CUPS
  fi
else
  # Container is not running
  echo "Docker container CUPS is not running."
  
  # Check if the USB device is connected
  if lsusb | grep "04a9:183c" > /dev/null
  then
    # USB device is connected, wait for 10 seconds and start the container
    echo "USB device is connected. Waiting for 10 seconds before starting Docker container CUPS."
    sleep 10
    docker start CUPS
  else
    # USB device is not connected, no need to do anything
    echo "USB device is not connected. Skipping Docker container start."
  fi
fi
