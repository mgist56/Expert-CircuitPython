# Expert CircuitPy
Meg Expert CircuitPython

https://github.com/chssigma/Markdown_Cheatsheet

http://wiki.chssigma.com/index.php?title=User:Mgist56

## Hello Processing
First Expert CircuitPython assignment; drawing a bouncing ball in Processing.
### Resources
https://processing.org/examples/bounce.html
### Images
<img src="Media/HelloProcessing.PNG" width="500">

### Takeaways
Processing.org is a useful resource, especially the Examples and Reference pages. For this assignment, River and I utilized the Bounce page under the Examples page on Processing. We simply modified the code to fit the specific requirements of the assignment. Lines 34 through 39 change the direction of the ellipse when it makes contact with the side of the window. I decided to make the background an obnoxious shade of fuchsia because I could.

## CircuitPython to Processing
Second Expert CircuitPython assignment; sending potentiometer data to Processing to draw.
### Resources
https://learn.adafruit.com/circuitpython-essentials/circuitpython-uart-serial

https://learn.adafruit.com/make-it-change-potentiometers/circuitpython

https://www.processing.org/examples/clock.html?scrlybrkr=4084e579

https://processing.org/reference/map_.html

### Images
<img src="Media/CircuitPy2Processing.png" width="300">
<img src="Media/CircuitPy2ProcessingClock.png" width="300">

### Takeaways
In this assignment, we modified the Clock code from the Example page of Processing. We removed two of the clock hands and changed the time-keeping aspect of the code in order to accommodate the potentiometer data. In order to make the hand of the gauge turn in synch with the actual potentiometer, TWO_PI and 0 had to be switched in the map “float p = map(myNum, 0, 255, TWO_PI, 0) - HALF_PI;”.

## Processing to CircuitPython
Third Expert CircuitPy assignment; making two servos move based on Processing data.
### Resources
https://processing.org/examples/constrain.html

https://processing.org/reference/line_.html

https://processing.org/reference/text_.html 

https://processing.org/reference/textSize_.html

https://processing.org/reference/map_.html

https://learn.adafruit.com/circuitpython-essentials/circuitpython-servo

### Images
<img src="Media/Processing2CircuitPy.PNG" width="500">

### Takeaways
For the Processing portion of this assignment, we modified the Constrain example code from processing.org to draw a grid and we used the map() funcation to display the coordinates of the mouse in terms of 0(degrees) to 180(degrees). Then we took this data and converted it to a string so that it could be utilized by the UART. For the CircuitPython portion, the data from Processing had to be decoded and then split. From there, we simply took the respective arrays and set the servo angles to those numbers. In Processing, hit ctrl + / in order to comment out a line of code quickly. 

## Assignment Template

### Resources

### Images

### Takeaways
