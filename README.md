# RingLoader
RingLoaderView is a custom loading indicator written in _**Swift**_ using _**UIKit**_ and _**Core Animation**_. It provides a circular loading animation with customizable properties such as line width, stroke color, and duration.

## Installation
Simply copy the RingLoaderView.swift file into your Xcode project.

## Usage
### Initialization
```
let ringLoaderView = RingLoaderView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
```
### Adding to a Parent View
```
ringLoaderView.add(in: parentView, sideLength: 100)
```
This method adds the RingLoaderView to a specified parent view and sets its size using the sideLength parameter.
### Customization
You can customize the appearance of the loader by adjusting the following properties:

* **lineWidth**: The width of the loader's stroke.
* **strokeColor**: The color of the loader's stroke.
* **duration**: The total duration for one complete animation cycle.

### Start and Stop Animation
To start the animation, call:
```
ringLoaderView.startAnimating()
```
To stop the animation, call:
```
ringLoaderView.stopAnimating()
```
## Example
```
let ringLoaderView = RingLoaderView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
ringLoaderView.lineWidth = 5.0
ringLoaderView.strokeColor = UIColor.blue
ringLoaderView.duration = 1.5

parentView.addSubview(ringLoaderView)
ringLoaderView.startAnimating()
```
![SimulatorScreenRecording-iPhone15Pro-2024-01-19at15 14 48-ezgif com-video-to-gif-converter](https://github.com/kusalrajapaksha/RingLoader/assets/72430450/b2c7bceb-a41a-49bd-ae7f-d8f9595e66d6)

### Author
Kusal Rajapaksha

Feel free to use and modify this loader in your projects. If you find it helpful, consider giving it a star on GitHub. Contributions are also welcome!
