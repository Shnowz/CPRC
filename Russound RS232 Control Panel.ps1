Add-Type -AssemblyName System.Windows.Forms

# Define the hex codes for each button
$button1Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 F1 23 00 00 00 00 00 01 12 F7" # Zone 1 OFF
$button2Hex = "F0 00 00 7F 00 01 71 05 02 02 00 00 F1 23 00 00 00 01 00 01 14 F7" # Zone 2 OFF
$button3Hex = "F0 00 00 7F 00 02 71 05 02 02 00 00 F1 23 00 00 00 02 00 01 16 F7" # Zone 3 OFF
$button4Hex = "F0 00 00 7F 00 03 71 05 02 02 00 00 F1 23 00 00 00 03 00 01 18 F7" # Zone 4 OFF
$button5Hex = "F0 00 00 7F 00 00 71 05 02 01 00 02 01 00 C1 00 02 00 00 00 01 44 F7" # Zone 1 SRC 1
$button6Hex = "F0 00 00 7F 00 00 71 05 02 01 00 02 01 00 C1 00 02 00 01 00 01 45 F7" # Zone 1 SRC 2
$button7Hex = "F0 00 00 7F 00 00 71 05 02 01 00 02 01 00 C1 00 02 00 02 00 01 46 F7" # Zone 1 SRC 3
$button8Hex = "F0 00 00 7F 00 00 71 05 02 01 00 02 01 00 C1 00 02 00 03 00 01 47 F7" # Zone 1 SRC 4
$button9Hex = "F0 00 01 7F 00 01 71 05 02 01 00 02 01 00 C1 00 02 00 00 00 01 46 F7" # Zone 2 SRC 1
$button10Hex = "F0 00 01 7F 00 01 71 05 02 01 00 02 01 00 C1 00 02 00 01 00 01 47 F7" # Zone 2 SRC 2
$button11Hex = "F0 00 01 7F 00 01 71 05 02 01 00 02 01 00 C1 00 02 00 02 00 01 48 F7" # Zone 2 SRC 3
$button12Hex = "F0 00 01 7F 00 01 71 05 02 01 00 02 01 00 C1 00 02 00 03 00 01 49 F7" # Zone 2 SRC 4
$button13Hex = "F0 00 02 7F 00 02 71 05 02 01 00 02 01 00 C1 00 02 00 00 00 01 48 F7" # Zone 3 SRC 1
$button14Hex = "F0 00 02 7F 00 02 71 05 02 01 00 02 01 00 C1 00 02 00 01 00 01 49 F7" # Zone 3 SRC 2
$button15Hex = "F0 00 02 7F 00 02 71 05 02 01 00 02 01 00 C1 00 02 00 02 00 01 4A F7" # Zone 3 SRC 3
$button16Hex = "F0 00 02 7F 00 02 71 05 02 01 00 02 01 00 C1 00 02 00 03 00 01 4B F7" # Zone 3 SRC 4
$button17Hex = "F0 00 03 7F 00 03 71 05 02 01 00 02 01 00 C1 00 02 00 00 00 01 4A F7" # Zone 4 SRC 1
$button18Hex = "F0 00 03 7F 00 03 71 05 02 01 00 02 01 00 C1 00 02 00 01 00 01 4B F7" # Zone 4 SRC 2
$button19Hex = "F0 00 03 7F 00 03 71 05 02 01 00 02 01 00 C1 00 02 00 01 00 01 4B F7" # Zone 4 SRC 3
$button20Hex = "F0 00 03 7F 00 03 71 05 02 01 00 02 01 00 C1 00 02 00 03 00 01 4D F7" # Zone 4 SRC 4
$button21Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 7F 00 00 00 00 00 01 7C F7" # Zone 1 Volume Up
$button22Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 F1 7F 00 00 00 00 00 01 6E F7" # Zone 1 Volume Down
$button23Hex = "F0 00 00 7F 00 01 71 05 02 02 00 00 7F 00 00 00 00 00 01 7D F7" # Zone 2 Volume Up
$button24Hex = "F0 00 00 7F 00 01 71 05 02 02 00 00 F1 7F 00 00 00 00 00 01 6F F7" # Zone 2 Volume Down
$button25Hex = "F0 00 00 7F 00 02 71 05 02 02 00 00 7F 00 00 00 00 00 01 7E F7" # Zone 3 Volume Up
$button26Hex = "F0 00 00 7F 00 02 71 05 02 02 00 00 F1 7F 00 00 00 00 00 01 70 F7" # Zone 3 Volume Down
$button27Hex = "F0 00 00 7F 00 03 71 05 02 02 00 00 7F 00 00 00 00 00 01 7F F7" # Zone 4 Volume Up
$button28Hex = "F0 00 00 7F 00 03 71 05 02 02 00 00 F1 7F 00 00 00 00 00 01 71 F7" # Zone 4 Volume Down
$button29Hex = ""  # Indev
$button30Hex = ""  # Indev
$button31Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 F1 21 00 0C 00 00 00 01 1C F7" # Zone 1 Volume 24
$button32Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 F1 21 00 19 00 00 00 01 29 F7" # Zone 1 Volume 50
$button33Hex = "F0 00 01 7F 00 01 71 05 02 02 00 00 F1 21 00 0C 00 01 00 01 1F F7" # Zone 2 Volume 24
$button34Hex = "F0 00 01 7F 00 01 71 05 02 02 00 00 F1 21 00 19 00 01 00 01 2C F7" # Zone 2 Volume 50
$button35Hex = "F0 00 02 7F 00 02 71 05 02 02 00 00 F1 21 00 0C 00 02 00 01 22 F7" # Zone 3 Volume 24
$button36Hex = "F0 00 02 7F 00 02 71 05 02 02 00 00 F1 21 00 19 00 02 00 01 2F F7" # Zone 3 Volume 50
$button37Hex = "F0 00 03 7F 00 03 71 05 02 02 00 00 F1 21 00 0C 00 03 00 01 25 F7" # Zone 4 Volume 24
$button38Hex = "F0 00 03 7F 00 03 71 05 02 02 00 00 F1 21 00 19 00 03 00 01 32 F7" # Zone 4 Volume 50
$button39Hex = "F0 00 00 7F 00 00 71 05 02 02 00 00 F1 21 00 28 00 00 00 01 38 F7" # Zone 1 Volume 80
$button40Hex = "F0 00 01 7F 00 01 71 05 02 02 00 00 F1 21 00 28 00 01 00 01 3B F7" # Zone 2 Volume 80
$button41Hex = "F0 00 02 7F 00 02 71 05 02 02 00 00 F1 21 00 28 00 02 00 01 3E F7" # Zone 3 Volume 80
$button42Hex = "F0 00 03 7F 00 03 71 05 02 02 00 00 F1 21 00 28 00 03 00 01 41 F7" # Zone 4 Volume 80
$button43Hex = "F0 00 00 7F 00 00 71 05 05 02 00 00 00 00 00 6A 00 00 00 01 00 01 6E F7" # Zone 1 Bass down
$button44Hex = "F0 00 00 7F 00 00 71 05 05 02 00 00 00 00 00 69 00 00 00 01 00 01 6D F7" # Zone 1 Bass up
$button45Hex = "F0 00 00 7F 00 00 71 05 05 02 00 00 00 01 00 6A 00 00 00 02 00 01 70 F7" # Zone 1 Treble down
$button46Hex = "F0 00 00 7F 00 00 71 05 05 02 00 00 00 01 00 69 00 00 00 02 00 01 6F F7" # Zone 1 Treble up
$button47Hex = "F0 00 00 7F 00 01 71 05 05 02 00 01 00 00 00 6A 00 00 00 01 00 01 70 F7" # Zone 2 Bass down
$button48Hex = "F0 00 00 7F 00 01 71 05 05 02 00 01 00 00 00 69 00 00 00 01 00 01 6F F7" # Zone 2 Bass up
$button49Hex = "F0 00 00 7F 00 01 71 05 05 02 00 01 00 01 00 6A 00 00 00 02 00 01 72 F7" # Zone 2 Treble down
$button50Hex = "F0 00 00 7F 00 01 71 05 05 02 00 01 00 01 00 69 00 00 00 02 00 01 71 F7" # Zone 2 Treble up
$button51Hex = "F0 00 00 7F 00 02 71 05 05 02 00 02 00 00 00 6A 00 00 00 01 00 01 72 F7" # Zone 3 Bass down
$button52Hex = "F0 00 00 7F 00 02 71 05 05 02 00 02 00 00 00 69 00 00 00 01 00 01 71 F7" # Zone 3 Bass up
$button53Hex = "F0 00 00 7F 00 02 71 05 05 02 00 02 00 01 00 6A 00 00 00 02 00 01 73 F7" # Zone 3 Treble down
$button54Hex = "F0 00 00 7F 00 00 71 05 05 02 00 02 00 01 00 69 00 00 00 00 00 01 6F F7" # Zone 3 Treble up
$button55Hex = "F0 00 00 7F 00 03 71 05 05 02 00 03 00 00 00 6A 00 00 00 01 00 01 74 F7" # Zone 4 Bass down
$button56Hex = "F0 00 00 7F 00 03 71 05 05 02 00 03 00 00 00 69 00 00 00 01 00 01 73 F7" # Zone 4 Bass up
$button57Hex = "F0 00 00 7F 00 03 71 05 05 02 00 03 00 01 00 6A 00 00 00 02 00 01 76 F7" # Zone 4 Treble down
$button58Hex = "F0 00 00 7F 00 03 71 05 05 02 00 03 00 01 00 69 00 00 00 02 00 01 75 F7" # Zone 4 Treble up

# Create a form object
$form = New-Object System.Windows.Forms.Form
$form.Text = "Russound RS232 Control Panel for CAS44 - Gremlins Incorp."
$form.Size = New-Object System.Drawing.Size(630, 440)
$form.formborderstyle = "fixedtoolwindow"
$form.MaximizeBox = $False
$form.BackColor = [System.Drawing.Color]::WhiteSmoke

# Create a button for sending the first hex code, this turns off zone 1.
$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "Zone 1 OFF"
$button1.Location = New-Object System.Drawing.Point(20, 20)
$button1.Size = New-Object System.Drawing.Size(100, 100)
$button1.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button1Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# Create a button for sending the second hex code, this turns off zone 2.
$button2 = New-Object System.Windows.Forms.Button
$button2.Text = "Zone 2 OFF"
$button2.Location = New-Object System.Drawing.Point(180, 20)
$button2.Size = New-Object System.Drawing.Size(100, 100)
$button2.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button2Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# Create a button for sending the third hex code, this turns off zone 3.
$button3 = New-Object System.Windows.Forms.Button
$button3.Text = "Zone 3 OFF"
$button3.Location = New-Object System.Drawing.Point(340, 20)
$button3.Size = New-Object System.Drawing.Size(100, 100)
$button3.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button3Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# Create a button for sending the fourth hex code, this turns off zone 4.
$button4 = New-Object System.Windows.Forms.Button
$button4.Text = "Zone 4 OFF"
$button4.Location = New-Object System.Drawing.Point(500, 20)
$button4.Size = New-Object System.Drawing.Size(100, 100)
$button4.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button4Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 1 for zone 1.
$button5 = New-Object System.Windows.Forms.Button
$button5.Text = "SRC 1"
$button5.Location = New-Object System.Drawing.Point(20, 120)
$button5.Size = New-Object System.Drawing.Size(50, 50)
$button5.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button5Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 2 for zone 1.
$button6 = New-Object System.Windows.Forms.Button
$button6.Text = "SRC 2"
$button6.Location = New-Object System.Drawing.Point(70, 120)
$button6.Size = New-Object System.Drawing.Size(50, 50)
$button6.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button6Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 3 for zone 1. 
$button7 = New-Object System.Windows.Forms.Button
$button7.Text = "SRC 3"
$button7.Location = New-Object System.Drawing.Point(20, 170)
$button7.Size = New-Object System.Drawing.Size(50, 50)
$button7.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button7Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 4 for zone 1.
$button8 = New-Object System.Windows.Forms.Button
$button8.Text = "SRC 4"
$button8.Location = New-Object System.Drawing.Point(70, 170)
$button8.Size = New-Object System.Drawing.Size(50, 50)
$button8.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button8Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 1 for zone 2.
$button9 = New-Object System.Windows.Forms.Button
$button9.Text = "SRC 1"
$button9.Location = New-Object System.Drawing.Point(180, 120)
$button9.Size = New-Object System.Drawing.Size(50, 50)
$button9.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button9Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 2 for zone 2.
$button10 = New-Object System.Windows.Forms.Button
$button10.Text = "SRC 2"
$button10.Location = New-Object System.Drawing.Point(230, 120)
$button10.Size = New-Object System.Drawing.Size(50, 50)
$button10.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button10Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 3 for zone 2.
$button11 = New-Object System.Windows.Forms.Button
$button11.Text = "SRC 3"
$button11.Location = New-Object System.Drawing.Point(180, 170)
$button11.Size = New-Object System.Drawing.Size(50, 50)
$button11.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button11Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 4 for zone 2.
$button12 = New-Object System.Windows.Forms.Button
$button12.Text = "SRC 4"
$button12.Location = New-Object System.Drawing.Point(230, 170)
$button12.Size = New-Object System.Drawing.Size(50, 50)
$button12.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button12Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 1 for zone 3.
$button13 = New-Object System.Windows.Forms.Button
$button13.Text = "SRC 1"
$button13.Location = New-Object System.Drawing.Point(340, 120)
$button13.Size = New-Object System.Drawing.Size(50, 50)
$button13.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button13Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 2 for zone 3.
$button14 = New-Object System.Windows.Forms.Button
$button14.Text = "SRC 2"
$button14.Location = New-Object System.Drawing.Point(390, 120)
$button14.Size = New-Object System.Drawing.Size(50, 50)
$button14.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button14Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 3 for zone 3.
$button15 = New-Object System.Windows.Forms.Button
$button15.Text = "SRC 3"
$button15.Location = New-Object System.Drawing.Point(340, 170)
$button15.Size = New-Object System.Drawing.Size(50, 50)
$button15.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button15Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 4 for zone 3.
$button16 = New-Object System.Windows.Forms.Button
$button16.Text = "SRC 3"
$button16.Location = New-Object System.Drawing.Point(390, 170)
$button16.Size = New-Object System.Drawing.Size(50, 50)
$button16.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button16Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 1 for zone 4.
$button17 = New-Object System.Windows.Forms.Button
$button17.Text = "SRC 1"
$button17.Location = New-Object System.Drawing.Point(500, 120)
$button17.Size = New-Object System.Drawing.Size(50, 50)
$button17.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button17Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 2 for zone 4.
$button18 = New-Object System.Windows.Forms.Button
$button18.Text = "SRC 2"
$button18.Location = New-Object System.Drawing.Point(550, 120)
$button18.Size = New-Object System.Drawing.Size(50, 50)
$button18.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button18Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 3 for zone 4.
$button19 = New-Object System.Windows.Forms.Button
$button19.Text = "SRC 3"
$button19.Location = New-Object System.Drawing.Point(500, 170)
$button19.Size = New-Object System.Drawing.Size(50, 50)
$button19.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button19Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This selects source 4 for zone 4.
$button20 = New-Object System.Windows.Forms.Button
$button20.Text = "SRC 4"
$button20.Location = New-Object System.Drawing.Point(550, 170)
$button20.Size = New-Object System.Drawing.Size(50, 50)
$button20.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button20Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This raises volume for zone 1.
$button21 = New-Object System.Windows.Forms.Button
$button21.Text = "Volume up"
$button21.Location = New-Object System.Drawing.Point(20, 220)
$button21.Size = New-Object System.Drawing.Size(100, 25)
$button21.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button21Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# This lowers volume for zone 1.
$button22 = New-Object System.Windows.Forms.Button
$button22.Text = "Volume down"
$button22.Location = New-Object System.Drawing.Point(20, 245)
$button22.Size = New-Object System.Drawing.Size(100, 25)
$button22.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button22Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 23 This raises volume for zone 2.
$button23 = New-Object System.Windows.Forms.Button
$button23.Text = "Volume up"
$button23.Location = New-Object System.Drawing.Point(180, 220)
$button23.Size = New-Object System.Drawing.Size(100, 25)
$button23.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button23Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 24 This lowers volume for zone 2.
$button24 = New-Object System.Windows.Forms.Button
$button24.Text = "Volume down"
$button24.Location = New-Object System.Drawing.Point(180, 245)
$button24.Size = New-Object System.Drawing.Size(100, 25)
$button24.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button24Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 25 This raises volume for zone 3.
$button25 = New-Object System.Windows.Forms.Button
$button25.Text = "Volume up"
$button25.Location = New-Object System.Drawing.Point(340, 220)
$button25.Size = New-Object System.Drawing.Size(100, 25)
$button25.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button25Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 26 This lowers volume for zone 3.
$button26 = New-Object System.Windows.Forms.Button
$button26.Text = "Volume down"
$button26.Location = New-Object System.Drawing.Point(340, 245)
$button26.Size = New-Object System.Drawing.Size(100, 25)
$button26.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button26Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 27 This raises volume for zone 4.
$button27 = New-Object System.Windows.Forms.Button
$button27.Text = "Volume up"
$button27.Location = New-Object System.Drawing.Point(500, 220)
$button27.Size = New-Object System.Drawing.Size(100, 25)
$button27.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button27Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 28 This lowers volume for zone 3.
$button28 = New-Object System.Windows.Forms.Button
$button28.Text = "Volume down"
$button28.Location = New-Object System.Drawing.Point(500, 245)
$button28.Size = New-Object System.Drawing.Size(100, 25)
$button28.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button28Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 29 This turns all zones on. Doesn't work on CAS44.
$button29 = New-Object System.Windows.Forms.Button
$button29.Text = "All ON"
$button29.Location = New-Object System.Drawing.Point(20, 400)
$button29.Size = New-Object System.Drawing.Size(50, 30)
$button29.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button29Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 30 This turns all zones off.
$button30 = New-Object System.Windows.Forms.Button
$button30.Text = "All OFF"
$button30.Location = New-Object System.Drawing.Point(70, 400)
$button30.Size = New-Object System.Drawing.Size(50, 30)
$button30.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button30Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 31 This sets volume to 24% for zone 1.
$button31 = New-Object System.Windows.Forms.Button
$button31.Text = "Volume 24%"
$button31.Location = New-Object System.Drawing.Point(20, 270)
$button31.Size = New-Object System.Drawing.Size(100, 25)
$button31.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button31Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 32 This sets volume to 50% for zone 1.
$button32 = New-Object System.Windows.Forms.Button
$button32.Text = "Volume 50%"
$button32.Location = New-Object System.Drawing.Point(20, 295)
$button32.Size = New-Object System.Drawing.Size(100, 25)
$button32.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button32Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 39 This sets volume to 80% for zone 1.
$button39 = New-Object System.Windows.Forms.Button
$button39.Text = "Volume 80%"
$button39.Location = New-Object System.Drawing.Point(20, 320)
$button39.Size = New-Object System.Drawing.Size(100, 25)
$button39.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button39Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 33 This sets volume to 24% for zone 2.
$button33 = New-Object System.Windows.Forms.Button
$button33.Text = "Volume 24%"
$button33.Location = New-Object System.Drawing.Point(180, 270)
$button33.Size = New-Object System.Drawing.Size(100, 25)
$button33.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button33Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 34 This sets volume to 50% for zone 2.
$button34 = New-Object System.Windows.Forms.Button
$button34.Text = "Volume 50%"
$button34.Location = New-Object System.Drawing.Point(180, 295)
$button34.Size = New-Object System.Drawing.Size(100, 25)
$button34.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button34Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 40 This sets volume to 80% for zone 2.
$button40 = New-Object System.Windows.Forms.Button
$button40.Text = "Volume 80%"
$button40.Location = New-Object System.Drawing.Point(180, 320)
$button40.Size = New-Object System.Drawing.Size(100, 25)
$button40.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button40Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 35 This sets volume to 24% for zone 3.
$button35 = New-Object System.Windows.Forms.Button
$button35.Text = "Volume 24%"
$button35.Location = New-Object System.Drawing.Point(340, 270)
$button35.Size = New-Object System.Drawing.Size(100, 25)
$button35.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button35Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 36 This sets volume to 50% for zone 3.
$button36 = New-Object System.Windows.Forms.Button
$button36.Text = "Volume 50%"
$button36.Location = New-Object System.Drawing.Point(340, 295)
$button36.Size = New-Object System.Drawing.Size(100, 25)
$button36.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button36Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 41 This sets volume to 80% for zone 3.
$button41 = New-Object System.Windows.Forms.Button
$button41.Text = "Volume 80%"
$button41.Location = New-Object System.Drawing.Point(340, 320)
$button41.Size = New-Object System.Drawing.Size(100, 25)
$button41.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button41Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 37 This sets volume to 24% for zone 4.
$button37 = New-Object System.Windows.Forms.Button
$button37.Text = "Volume 24%"
$button37.Location = New-Object System.Drawing.Point(500, 270)
$button37.Size = New-Object System.Drawing.Size(100, 25)
$button37.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button37Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 38 This sets volume to 50% for zone 4.
$button38 = New-Object System.Windows.Forms.Button
$button38.Text = "Volume 50%"
$button38.Location = New-Object System.Drawing.Point(500, 295)
$button38.Size = New-Object System.Drawing.Size(100, 25)
$button38.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button38Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 42 This sets volume to 80% for zone 4.
$button42 = New-Object System.Windows.Forms.Button
$button42.Text = "Volume 80%"
$button42.Location = New-Object System.Drawing.Point(500, 320)
$button42.Size = New-Object System.Drawing.Size(100, 25)
$button42.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button42Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 43 This decreases bass for zone 1.
$button43 = New-Object System.Windows.Forms.Button
$button43.Text = "Bass ↓"
$button43.Location = New-Object System.Drawing.Point(20, 345)
$button43.Size = New-Object System.Drawing.Size(50, 25)
$button43.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button43Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 44 This increases bass for zone 1.
$button44 = New-Object System.Windows.Forms.Button
$button44.Text = "Bass ↑"
$button44.Location = New-Object System.Drawing.Point(70, 345)
$button44.Size = New-Object System.Drawing.Size(50, 25)
$button44.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button44Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 45 This decreases treble for zone 1.
$button45 = New-Object System.Windows.Forms.Button
$button45.Text = "Treb. ↓"
$button45.Location = New-Object System.Drawing.Point(20, 370)
$button45.Size = New-Object System.Drawing.Size(50, 25)
$button45.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button45Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 46 This increases treble for zone 1.
$button46 = New-Object System.Windows.Forms.Button
$button46.Text = "Treb. ↑"
$button46.Location = New-Object System.Drawing.Point(70, 370)
$button46.Size = New-Object System.Drawing.Size(50, 25)
$button46.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button46Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 47 This decreases bass for zone 2.
$button47 = New-Object System.Windows.Forms.Button
$button47.Text = "Bass ↓"
$button47.Location = New-Object System.Drawing.Point(180, 345)
$button47.Size = New-Object System.Drawing.Size(50, 25)
$button47.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button47Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 48 This increases bass for zone 2.
$button48 = New-Object System.Windows.Forms.Button
$button48.Text = "Bass ↑"
$button48.Location = New-Object System.Drawing.Point(230, 345)
$button48.Size = New-Object System.Drawing.Size(50, 25)
$button48.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button48Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 49 This decreases treble for zone 2.
$button49 = New-Object System.Windows.Forms.Button
$button49.Text = "Treb. ↓"
$button49.Location = New-Object System.Drawing.Point(180, 370)
$button49.Size = New-Object System.Drawing.Size(50, 25)
$button49.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button49Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 50 This increases treble for zone 2.
$button50 = New-Object System.Windows.Forms.Button
$button50.Text = "Treb. ↑"
$button50.Location = New-Object System.Drawing.Point(230, 370)
$button50.Size = New-Object System.Drawing.Size(50, 25)
$button50.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button50Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 51 This decreases bass for zone 3.
$button51 = New-Object System.Windows.Forms.Button
$button51.Text = "Bass ↓"
$button51.Location = New-Object System.Drawing.Point(340, 345)
$button51.Size = New-Object System.Drawing.Size(50, 25)
$button51.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button51Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 52 This increases bass for zone 3.
$button52 = New-Object System.Windows.Forms.Button
$button52.Text = "Bass ↑"
$button52.Location = New-Object System.Drawing.Point(390, 345)
$button52.Size = New-Object System.Drawing.Size(50, 25)
$button52.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button52Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 53 This decreases treble for zone 3.
$button53 = New-Object System.Windows.Forms.Button
$button53.Text = "Treb. ↓"
$button53.Location = New-Object System.Drawing.Point(340, 370)
$button53.Size = New-Object System.Drawing.Size(50, 25)
$button53.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button53Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 54 This increases treble for zone 3.
$button54 = New-Object System.Windows.Forms.Button
$button54.Text = "Treb. ↑"
$button54.Location = New-Object System.Drawing.Point(390, 370)
$button54.Size = New-Object System.Drawing.Size(50, 25)
$button54.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button54Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 55 This decreases bass for zone 4.
$button55 = New-Object System.Windows.Forms.Button
$button55.Text = "Bass ↓"
$button55.Location = New-Object System.Drawing.Point(500, 345)
$button55.Size = New-Object System.Drawing.Size(50, 25)
$button55.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button55Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 56 This increases bass for zone 4
$button56 = New-Object System.Windows.Forms.Button
$button56.Text = "Bass ↑"
$button56.Location = New-Object System.Drawing.Point(550, 345)
$button56.Size = New-Object System.Drawing.Size(50, 25)
$button56.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button56Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 57 This decreases treble for zone 4.
$button57 = New-Object System.Windows.Forms.Button
$button57.Text = "Treb. ↓"
$button57.Location = New-Object System.Drawing.Point(500, 370)
$button57.Size = New-Object System.Drawing.Size(50, 25)
$button57.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button53Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# 58 This increases treble for zone 4.
$button58 = New-Object System.Windows.Forms.Button
$button58.Text = "Treb. ↑"
$button58.Location = New-Object System.Drawing.Point(550, 370)
$button58.Size = New-Object System.Drawing.Size(50, 25)
$button58.Add_Click({
    # Create a new SerialPort object for COM3
    $serialPort = New-Object System.IO.Ports.SerialPort COM3, 19200, None, 8, One

    # Open the serial port
    $serialPort.Open()

    # Convert the hex code to a byte array
    $bytesToSend = $button58Hex.Split(" ") | ForEach-Object { [byte]::Parse($_, "HexNumber") }

    # Send the byte array over the serial port
    $serialPort.Write($bytesToSend, 0, $bytesToSend.Length)

    # Close the serial port
    $serialPort.Close()
})

# Add the buttons to the form
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.Controls.Add($button3)
$form.Controls.Add($button4)
$form.Controls.Add($button5)
$form.Controls.Add($button6)
$form.Controls.Add($button7)
$form.Controls.Add($button8)
$form.Controls.Add($button9)
$form.Controls.Add($button10)
$form.Controls.Add($button11)
$form.Controls.Add($button12)
$form.Controls.Add($button13)
$form.Controls.Add($button14)
$form.Controls.Add($button15)
$form.Controls.Add($button16)
$form.Controls.Add($button17)
$form.Controls.Add($button18)
$form.Controls.Add($button19)
$form.Controls.Add($button20)
$form.Controls.Add($button21)
$form.Controls.Add($button22)
$form.Controls.Add($button23)
$form.Controls.Add($button24)
$form.Controls.Add($button25)
$form.Controls.Add($button26)
$form.Controls.Add($button27)
$form.Controls.Add($button28)
#$form.Controls.Add($button29)
#$form.Controls.Add($button30)
$form.Controls.Add($button31)
$form.Controls.Add($button32)
$form.Controls.Add($button33)
$form.Controls.Add($button34)
$form.Controls.Add($button35)
$form.Controls.Add($button36)
$form.Controls.Add($button37)
$form.Controls.Add($button38)
$form.Controls.Add($button39)
$form.Controls.Add($button40)
$form.Controls.Add($button41)
$form.Controls.Add($button42)
$form.Controls.Add($button43)
$form.Controls.Add($button44)
$form.Controls.Add($button45)
$form.Controls.Add($button46)
$form.Controls.Add($button47)
$form.Controls.Add($button48)
$form.Controls.Add($button49)
$form.Controls.Add($button50)
$form.Controls.Add($button51)
$form.Controls.Add($button52)
$form.Controls.Add($button53)
$form.Controls.Add($button54)
$form.Controls.Add($button55)
$form.Controls.Add($button56)
$form.Controls.Add($button57)
$form.Controls.Add($button58)


# Show the form
$form.ShowDialog() | Out-Null
