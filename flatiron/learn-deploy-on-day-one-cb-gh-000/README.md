# Your first deployment

There is no better way to feel like a developer than by actually becoming one, which you do by shipping code. With everything you've learned thus far, we think you're ready for the challenge. In this lab, you'll make a change to the Learn website: you will be asked to add your information to our public student directory (visible to the world at http://students.learn.co) and put in motion the sequence of events to have your change go live in production.

We have already created a template, but you need to use your Git, HTML and CSS skills to submit an updated version of the site with your information. Here we go!

## Requirements

You'll need the following information about yourself:

* Name
* Blog Url (if you have one)
* Twitter URL
* LinkedIn URL
* Github URL
* Tagline
* Profile Picture (something normal, a headshot, of a good reusable size that can be easily cropped)
* Background Picture (like your cover picture from Twitter)
* Previous Work Experience
* Short Bio
* Education

## Structure

The structure of this project looks something like this:

```text
├── README.md
├── css
│   ├── css style sheets
├── assets
|   |__ fonts
|   |   ├── some fonts
├── index.html
└── students
    └── student-name.html
    └── profile.html

```

### Files you will need to alter:
  * `index.html`
  * `css/styles.css`
  * `students/student-name.html`

## Getting Started

Fork and clone this lab.

#### Add your images

The first thing you'll need to do is add your image assets.

**Since we have tons of awesome students on Learn, adding all the images to our project would result in a behemoth sized repository. So instead of adding them to our project, we will be uploading our images to imgur.com (a free image hosting site), and linking to the images respective URLs in our css file.**

  * Upload your cover and profile pictures to imgur (they should be jpg or png files):
    * Head to <a href="http://imgur.com/" target="_blank">imgur.com</a>
    * click on the blue 'Upload images' button on the top of the page
    * You can then drag and drop the cover, and profile images to that page, or use the 'browse your computer option to find them manually'
    * Click on the 'Start Upload' button to upload the images
    * If you hover over the top right of each image, you should see a link with 3 little dots on the left, hover over those dots and copy the *direct link* URL and paste that somewhere safe. *You will need to use these links in the `css/styles.css` file to be able to display the images in your profile*.


  
  * Now we're ready to create the CSS rules that we can use to display our pictures in the HTML later on.
   * Head to the `css/styles.css` file.
   * check out some students css in the file to see what you'll need to do.
   
  It should look something like this 

```css
  #firstname-lastname-cover {
    background-image: url("link to my imgur cover photo");
  }

  #firstname-lastname-card {
    background-image: url("link to my imgur card photo");
  }

```
   
#### Add your Profile page

  1. Copy another students `student-name.html` file and rename it to your name.
  2. Open up `your-name.html` and modify it with your information (links, bio etc).

#### Add To The Index

  1. Open up `index.html`
  2. Copy one of the existing `div`s to make a new slot for you. Add in your information
  3. Re-use the profile image from your profile page and link to your profile page

#### Taking stock

Now that you have everything locally, let's take stock of what we have. Take a look at `index.html` and `profile.html` in the browser. To do this:

* If you're working on a Mac, you can just find the file locally using Finder and click to view the webpage in Chrome.
* If you're working on the Learn IDE, you can right-click the file in the filetree and select "Open in Browser".

You may need to cycle a few times until everything looks good. Once you're happy with it, you're ready to submit.

#### Submit!

  1. Easy! After editing `index.html` and `css/style.css` and adding `firstname-lastname.html`, just submit a Pull Request back to us. We'll take a look ASAP and get your change merged and deployed.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/learn-deploy-on-day-one' title='Your first deployment'>Your first deployment</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/learn-deploy-on-day-one'>Deploy Your Profile Page</a> on Learn.co and start learning to code for free.</p>
