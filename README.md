# O365_offline_installer

A tool for techs to pre-install Office 365 from a local USB drive or network share (no Internet download). It works for Office 2013 and 2016 (each installer is a separate app), and includes Project, Visio, and Skype for Business Basic. Installation of Office by itself takes approximately 9 minutes.

Instructions:
- Download the Office 365 / 2013 Deployment Toolkit from: https://www.microsoft.com/en-us/download/details.aspx?id=36778
- Run the installer
- Create a folder called O365_2013
- Create a sub-folder called SOURCES
- In SOURCES, create the following product subfolders:
  - Business
  - Project
  - ProPlus
  - SkypeBusiness
  - SkypeBusiness_Basic
  - SmallBusiness
  - Visio

- Copy the setup.exe program from the Deployment Toolkit to each of the product subfolders
- Copy setup.exe to root of O365_2013 folder
- Copy the download.xml from GitHub to the root of the O365 folder

- FOR EACH O365 PRODUCT:
- edit the download.xml file by uncommenting the product ID and setting the SourcePath element to the proper subfolder in O365_2013\SOURCES
- Open an admin-level command prompt, and CD to the root of the O365_2013 folder
- Run: setup.exe /download download.xml
- Note: the download can take up to 40 minutes
- Verify that a ~1 GB folder called "Office" appears in the product subfolder, in O365_2013\SOURCES
- Edit the install.xml by uncommenting the proper ProductID, and Save As install.xml to each of the product subfolders

- When all downloads are finished and the install.xml files have been saved, delete the download.xml file and setup.exe from the root of the O365_2013 folder
- Copy the install_2013_RunAs_ADMIN.cmd to the root of the O365_2013 folder
- The tool is ready to deploy. Copy the O365_2013 folder to a USB drive or network share

-----------------------------

REPEAT ALL STEPS FOR OFFICE 2016 VERSION

- The Deployment Toolkit for 2016 is here: https://www.microsoft.com/en-us/download/details.aspx?id=49117
- Name the root folder O365_2016

-----------------------------

SCREENSHOTS OF FOLDER STRUCTURE:

<a href="http://i.imgur.com/c6MEjF4.png" target="blank">1. Root folder</a>

<a href="http://i.imgur.com/WeXzEun.png" target="blank">2. Product subfolders</a>

<a href="http://i.imgur.com/hDTu8Id.png" target="blank">3. Final contents of product subfolders</a>

-----------------------------

SCREENSHOTS OF PROGRAM IN USE:

<a href="http://i.imgur.com/JHWbuTp.png" target="blank">1. Product selection</a>

<a href="http://i.imgur.com/5rSYDCq.png" target="blank">2. Input verification</a>

<a href="http://i.imgur.com/5Ak10Vi.png" target="blank">3. Existing Office installation detected</a>

<a href="http://i.imgur.com/qbuaUyB.png" target="blank">4. Installation successful</a>

