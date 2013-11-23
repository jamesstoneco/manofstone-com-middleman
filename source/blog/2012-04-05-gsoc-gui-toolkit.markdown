---
title: GSOC Processing GUI Toolkit Proposal
date: 2012/04/05
tags: code, java, processing
---

The GUI Toolkit will allow the rapid development of a UI visually and write framework code for interaction. By capitalizing on the amazing work of Andreas Schlegel in the ControlP5 library ([http://www.sojamo.de/libraries/controlP5](http://www.sojamo.de/libraries/controlP5)) the goal is to create a set of tools that allows the rapid and graphical creation, alignment and customization of UI elements. Additionally a new color picker will be written for ControlP5.

SPLIT\_SUMMARY\_BEFORE\_THIS





## Project Description





  

The processing development environment is a valuable asset to both those new to programming, non-programmers and programmers alike. In my experience as a programmer, artist, student and university instructor there is one area that I believe is lacking in processing and that is of rapid development of user interface elements. In the mid 1990's, just after high school I used the Borland Delphi (Turbo Pascal) RAD (Rapid Application Development) environment. Although it did not work well by todays standards but I believe that a mashup of a Delphi style UI designer combined with the flexibility and ease of programming provided by the ControlP5 library could provide the processing community with a novel tool to approach programming projects that require a UI. This would ease the learning curve and lower the cost of entry for many projects.





The project will comprise of the following elements:





1) The UI Designer: a full screen application written in processing that uses controlP5 elements itself to quickly generate a user interface visually and by modifying parameters. This will save in the standard controlP5 xml format allowing it to be used with the following tools or directly from controlP5 for advanced programmers. Writing this component in Processing is necessary to avoid a complete rewrite of ControlP5 to work natively in JFC/Swing. Additionally it will be an advanced example of ControlP5 / UI work contributed to the community.





screen capture of proof of concept:





[![](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui-toolkit-ui-designer-window-300x242.png)](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui-toolkit-ui-designer-window.png) [![](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui-toolkit-ui-designer-fs-300x187.png)](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui-toolkit-ui-designer-fs.png)





processing code for above example (required the ControlP5 library):





[GSOC_GUIToolkit_UI_Designer_Draft.zip](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/GSOC_GUIToolkit_UI_Designer_Draft.zip)





2) The Framework Generator: This will have a simple GUI using swing that will allow users to select an xml file, choose several options, and then have the framework code generated on the fly. This will allow the easy sharing and reuse of user interface elements within the processing and controlP5 community.





draft processing tool ui:





[![](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui_toolkit_p5_tool_ui.png)](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/gui_toolkit_p5_tool_ui.png)





3) Color Picker: a proper color picker for ControlP5. In my opinion this is a necessary addition to the ControlP5 library either within the project itself or within a fork of the project. This will be a color picker that allows RGB, HSV selection and advanced features.









[![](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/color_picker_ui.png)](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/color_picker_ui.png)  







## Timeline






	
  * april 24 - 27: get to know mentors, read JFC/Swing/ControlP5 documentation, get up to speed

   
  * april 30 - may 4: write ColorPicker element for ControlP5, examine XML export methods in ControlP5

   
  * may 7 - may 11: write basic UI Designer (processing) (bangs, buttons) with parameters and xml export and parse

   
  * may 14 - may 18: write basic UI Framework Tool (Java/JFC/Swing) converts basic xml to working code from previous week

   
  * may 21 - may 25: create functionality for the rest of controlp5 including new color picker in ui designer

   
  * may 28 - june 1: continue adding complete control p5 functionality, id any conflicts or missing features in xml

   
  * june 4 - june 8: update UI Framework Tool to create basic code framework for all control P5 elements

   
  * june 11 - june 15: continue updating framework tool

   
  * june 18 - june 22: add additional features, verbose commenting, choice of framework styles, etc. to UI Framework Tool

   
  * june 25 - june 29: documentation, testing and bug fixes for UI Designer

   
  * july 2 - july 6: documentation, testing, and bug fixes for UI Framework Tool

   
  * july 9 - july 13 : submit mid-term evaluation and prepare code base for new features below

   
  * july 16 - july 20: add additional features such as snap to grid, relative alignment, etc. to UI Designer

   
  * july 23 - july 27: add additional features such as above or agreed between mentor and myself

   
  * july 30 - aug 3: additional small features, robust bug testing

   
  * aug 6 - aug 10: robust bug testing, final packaging of code for distribution, javadocs, website, etc.

   
  * aug 13 - pencils down - scrub code, write documentation, write tests,

   
  * aug 20 - firm pencils down date, submit final evaluation

   
  * aug 24 - final eval deadline

   
  * aug 27 - gsoc final results announced

   
  * aug 31 - submit required code samples to google





## Resume/CV





  

Resume:





[Stone_GSOC_Resume.pdf](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/Stone_GSOC_Resume.pdf)





Academic CV:





[Stone_Academic_CV.pdf](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/Stone_Academic_CV.pdf)  







## Other Code Examples






	
  * [boids_spatialed_sound](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/boids_spatialed_sound.zip) - Spatialized Sound using Boids Algorithm (drives a max/msp patch written by Ian Brill)

   
  * [osra_sliders_ik](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/osra_sliders_ik.zip) - using controlP5 to control a open source robotic arm with an arduino, serial servo driver, etc.

   
  * [multiZoogComplex](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/multiZoogComplex.zip) - based on Daniel Shiffman's book, showing more complex behaviors to demonstrate OOP concepts to my students

   
  * [lidar_polar_graph](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/lidar_polar_graph.zip) - simple visualization of pseudo-lidar data from a rotating ir distance sensor captured with an arduino

   
  * [LedMatrixWhite](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/LedMatrixWhite.zip) - a simple system to drive LedMatrix's in an installation using minim spectrum analysis.

   
  * [firmata_ports](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/firmata_ports.zip) - ports of some simple arduino programs to run in processing using firmata and the arduino library. for teaching basic mechatronic concepts.

   
  * [chutesLadders](http://www.jamesjamesjames.com/wp-content/uploads/2012/04/chutesLadders.zip) - a demo for my students of how to approach the chutes and ladders game using OOP.



      


