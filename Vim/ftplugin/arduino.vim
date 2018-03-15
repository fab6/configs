"==================================================================================================
" Arduino
"
let g:arduino_cmd = '/home/fbraenns/03_GA/TOOLs/Arduino/arduino-1.8.5/arduino'
let g:arduino_dir = '/home/fbraenns/03_GA/TOOLs/Arduino/arduino-1.8.5'
" Run the arduino command inside a Xvfb. Requires Xvfb to be installed and in the
" PATH. >
let g:arduino_run_headless = 1
"                                                              *'g:arduino_args'*
" Additional arguments that will be passed to the 'arduino' command during build
" and upload. See
" https://github.com/arduino/Arduino/blob/master/build/shared/manpage.adoc for
" more detail. >
let g:arduino_args = '--verbose-upload'

" The board type to use when compiling and uploading. See also
" |:ArduinoChooseBoard|. >
let g:arduino_board = 'arduino:avr:uno'

" The programmer type to use when compiling and uploading. See also
" |:ArduinoChooseProgrammer|. >
let g:arduino_programmer = 'arduino:usbtinyisp'
<
" Command used to connect to the serial port for debugging. The strings '{port}'
" and '{baud}' will be replace with the port and baud values. >
"   let g:arduino_serial_cmd = 'screen {port} {baud}'
"   let g:arduino_serial_cmd = 'picocom {port} -b {baud} -l'

" The baud rate to use for the debugging serial connection. >
"   let g:arduino_serial_baud = 9600
" Automatically set the baud rate by searching for 'Serial.begin()' >
"   let g:arduino_auto_baud = 1

" If inside a tmux session, run the serial connection command inside of this
" tmux command.  Set to '' to disable. The default will create a horizontal
" split. >
"   let g:arduino_serial_tmux = 'split-window -d'

" Connect to this serial port when uploading & debugging. This is not set by
" default. If not set, vim-arduino will attempt to guess which port to use. See
" also |:ArduinoChoosePort| >
let g:arduino_serial_port = '/dev/ttyACM0'
" let g:arduino_serial_port = '/dev/USB'
" Search these patterns to find a likely serial port to upload to. >
"   let g:arduino_serial_port_globs = ['/dev/ttyACM*',
"                                     \'/dev/ttyUSB*',
"                                     \'/dev/tty.usbmodem*',
"                                     \'/dev/tty.usbserial*']



