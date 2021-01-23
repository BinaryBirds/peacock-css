# Peacock CSS

![](https://github.com/BinaryBirds/peacock-css/blob/main/.github/assets/logo.png?raw=true)

A lightweight, utility-first, modern CSS library.

## Basics

Peacock CSS follows an utility-first approach (inspired by [Tailwind CSS](https://tailwindcss.com)), but it's lightweight (uncompressed ~800 LoC, ~26kb, compressed: only ~4kb) and gives you some neat helper tools to define your very own design system. It fully supports building responsive websites even in light and dark mode without any extra effort. 

- open-source 
- free
- lightweight 
- minimalistic
- modern
- modular
- responsive 
- beautiful

### Installation

You can use [jsDelivr](https://www.jsdelivr.com) to link Peacock CSS into your project:

```
https://cdn.jsdelivr.net/gh/binarybirds/peacock-css@1.0.0-beta.1/peacock.min.css
```

Just use a standard HTML `link` tag to link the library as an external stylesheet.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Demo</title>

	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/binarybirds/peacock-css@1.0.0-beta.1/peacock.min.css">
</head>
<body>

    <div class="container margin-top">
        <h1>Hello world!</h1>
        <p>This is a simple Peacock CSS demo.</p>
    </div>

</body>
</html>
```

You should always use the minified version and it is also recommended to use a CDN server.

### Demo

After installing Peacock CSS, just use the available style classes to design your HTML document.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Demo</title>

	  <link rel="stylesheet" href="./css/peacock.css">
</head>
<body>

    <div class="container margin-top">
        <h1>Hello world!</h1>
        <p>This is a simple Peacock CSS demo.</p>
    </div>

</body>
</html>
```

Scroll down to read more about the basic concepts and the available classes. 

### Reset

Peacock CSS resets all the margins and paddings on every element by default.

```css
* {
  margin: 0;
  padding: 0;
}
```

Some other default HTML elements are also custom styled, you can read more about them in later sections.

### Breakpoints

Peacock CSS follows the conventions described in the following article:

[The 100% correct way to do CSS breakpoints](https://www.freecodecamp.org/news/the-100-correct-way-to-do-css-breakpoints-88d6a5ba1862/)

These are the screen sizes:

- 0-599 - extra small
- 600-899 - small
- 900-1199 - normal
- 1200-1799 - large
- 1800+ - extra large

Peacock CSS follows a mobile-first design approach and uses the following media queries.

```css
/* general style comes here (mobile first) */

@media screen and (max-width: 599px) {   
    /* extra small device screens only < 600 */
}
@media screen and (min-width: 600px) {
    /* small device screens: 600-899 */
}
@media screen and (min-width: 900px) {
    /* "normal" device screens: 900-1199 */ 
}
@media screen and (min-width: 1200px) {
    /* large device screens: 1200-1799 */ 
}
@media screen and (min-width: 1800px) {
    /* extra large device screens: 1800+ */ 
}
```

If you want to extend or update various styles, you should use these media queries to define the exact same breakpoints.

### Color schemes

Peacock CSS supports multiple color schemes.

- Light 
- Dark

You can use the following media query to define your own styles:

```css
/* light mode */
@media (prefers-color-scheme: dark) {
    /* dark mode */
}
```

Everything you create with Peacock CSS will work for both interface styles (light mode and dark mode).

### Variants

Almost every class available in Peacock CSS has **style variants**. This is a very important context, every selector that has a variant uses a suffix, separated by a dash character (e.g. margin-[variant]). The following variant suffixes are available:

- Extra large (-xl)
- Large (-l)
- Normal (no suffix)
- Small (-s)
- Extra small (-xs)

In some cases there are some other "special" variants available:

- Full (-full)
- Auto (-auto)
- Zero (-zero)

Now if you need to setup a margin for example, you can use the `margin-top-xl` class to add an extra large margin. 

## Typography

Peacock CSS uses the built-in system fonts based on your operating system. It uses `rem` values to support user-defined font sizes and the default line-height is slightly increased to support a better reading experience. Content containers and font sizes are automatically calculated to improve readability. 

```css
html {
    font-size: 1rem;
}
body {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    line-height: 1.5rem;   
}
```

If you want to use a custom font, you should override the font-family property on the `body` selector. Also if you want to change the font-size, please use the `html` selector (combined with media queries) if necessary.

### Headings

The following heading sizes are available in Peacock CSS:

- `h1`
- `h2`
- `h3`
- `h4`
- `h5`
- `h6`

Default HTML headings are stylish by default, but you can also use a custom element with a heading class:

```html
<span class="h1">This looks like a H1, but it's ok from a SEO perspective</span>
```

Headings and paragraphs only have top margins if they have an other element before it.

### Paragraphs

The paragraph style is also available through the `p` class. 

```html
<span class="p">This looks like a paragraph</span>
```

Here's a quick example with headings and stuff:

```html
<h1>Title</h1>

<h2>Subtitle</h2>
<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

<h3>Other sub-sub-title</h3>
<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

```

You put this entire code in a `container` element to automatically use the best available space to improve readability. 

### Text align

You can align text related content with the help of the following three classes.

- `text-align-center`
- `text-align-left`
- `text-align-right`

Justified text is not supported out of the box, because in 90% of the cases people don't use proper hyphenation, so justified text looks real bad. 

### Text size

There are 5 other text size classes available as variants. Please note that these text sizes are not related to heading sizes.

- `text-xl`
- `text-l`
- `text`
- `text-s`
- `text-xs`

You can use a custom size in the following way:

```html
<h2 class="text-xs">Extra small h2 text</h2>
```

Of course you can make a h2 look like a h1 by using the `h1` class instead of `text-xs`, feel free to try it out.

## Layout

### Wrapper

A wrapper is something that wraps a group of HTML elements together. It always renders as a block element and uses a relative position. It will hide overflowed content by default and it'll clear all `float` properties.

- `wrapper-full` - full width on all device sizes
- `wrapper-xl` - extra large size on high res devices, full width on smaller devices
- `wrapper-l` - large size on high res devices, full width on small devices
- `wrapper` - preferred wrapper size (use this if possible)
- `wrapper-s` - small wrapper
- `wrapper-xs` - extra small wrapper, even on mobile devices

Wrappers are responsive by default, they are very useful if you want to wrap elements without further alignment, but if you prefer center aligned containers, you should use the `container` class.

### Container

Containers are center aligned wrappers. Basically they have the same properties, with an extra auto left and right margin. 

- `container-full` - full width on all device sizes
- `container-xl` - extra large size on high res devices, full width on smaller devices
- `container-l` - large size on high res devices, full width on small devices
- `container` - preferred container size (use this if possible)
- `container-s` - small container
- `container-xs` - extra small container, even on mobile devices

It is really simple to create a container element.

```html
<div class="container">
	<h1>Title</h1>

	<h2>Subtitle</h2>

	<h2 class="text-xs">Extra small h2 text</h2>
	<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

	<h3>Other sub-sub-title</h3>
	<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>

```

The container used in the snippet above will scale based on your screen size. The content inside of it will be positioned in the middle of the screen.

#### Container size reference

**Default:**

```css
.wrapper-full, .container-full { width: 100%; }
.wrapper-xl, .container-xl { max-width: 960px; }
.wrapper-l, .container-l { max-width: 800px; }
.wrapper, .container { max-width: 640px; }
.wrapper-s, .container-s { max-width: 480px; }
.wrapper-xs, .container-xs { max-width: 320px; }
```

**900-1199**

```css
.wrapper-xl, .container-xl { max-width: 900px; }
.wrapper-l, .container-l { max-width: 804px; }
.wrapper, .container { max-width: 756px; }
.wrapper-s, .container-s { max-width: 640px; }
.wrapper-xs, .container-xs { max-width: 480px; }    
```

**1200-1790**

```css
.wrapper-xl, .container-xl { max-width: 1080px; }
.wrapper-l, .container-l { max-width: 960px; }
.wrapper, .container { max-width: 800px; }
.wrapper-s, .container-s { max-width: 756px; }
.wrapper-xs, .container-xs { max-width: 640px; }
```

**1800+**

```css
.wrapper-xl, .container-xl { max-width: 1440px; }
.wrapper-l, .container-l { max-width: 1280px; }
.wrapper, .container { max-width: 1080px; }
.wrapper-s, .container-s { max-width: 960px; }
.wrapper-xs, .container-xs { max-width: 800px; }
```

Text will look great when using default container elements. Note that average character per line (CPL) values will be usually good when using a container or smaller. Larger containers should be used to contain other elements, but If you want to support multiple column layouts, you should choose a grid over a container.

### Grid

Grids are responsive by default. The Desktop-Tablet-Mobile (DTM) system allows you to specify grid variants based on how many columns you want for each size. Of course you can choose a fixed column size grid, but usually that's not the case you want. Here's a list of available grids:

**Fixed colum grids** 

- `grid-1`
- `grid-2`
- `grid-3`
- `grid-4`
- `grid-5`
- `grid-6`
- `grid-7`
- `grid-8`
- `grid-9`
- `grid-10`
- `grid-11`
- `grid-12`

The number suffix represents the number of columns on every screen.

**DTM grids**

2-column-based responsive grids:

- `grid-211` - 2 columns on desktop, 1 column on tablet and mobile screens
- `grid-221` - 2 columns on desktop, tablet, 1 column on mobile screens

3-column-based responsive grids:

- `grid-311` - 3 columns on desktop, 1 column on tablet and  mobile screens
- `grid-321` - 3 columns on desktop, 2 column on tablet, 1 column on mobile screens

4-column-based responsive grids:

- `grid-411` - 4 columns on desktop, 1 column on tablet and mobile screens
- `grid-421` - 4 columns on desktop, 2 columns on tablet, 1 column on mobile screens
- `grid-431` - 4 columns on desktop, 3 columns on tablet, 1 column on mobile screens
- `grid-432` - 4 columns on desktop, 3 columns on tablet, 2 column on mobile screens

5-column-based responsive grids:

- `grid-521` - 5 columns on desktop, 2 columns on tablet, 1 column on mobile screens
- `grid-531` - 5 columns on desktop, 3 columns on tablet, 1 column on mobile screens
- `grid-532` - 5 columns on desktop, 3 columns on tablet, 2 columns on mobile screens

The most common use-case is a 321 grid. Here's a feature box example:

```html
<div class="container">
	<div class="grid-321">
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		<div class="grid-col-1">
			<span class="h1">🦚</span>
			<h3 class="margin-top-zero">Feature</h3>
			<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
		</div>
		
	</div>
</div>
```

Please note that you have to use a `grid-col-[x]` class to specify the size of an element in a grid. Usually the best practice is to define a responzive DTM system-based grid and then use `grid-col-1` to span a 1 column wide item.

- `grid-col-1` - 1 column wide item
- `grid-col-2` - 2 column wide item
- `grid-col-3` - 3 column wide item
- `grid-col-4` - 4 column wide item
- `grid-col-5` - 5 column wide item
- `grid-col-6` - 6 column wide item
- `grid-col-7` - 7 column wide item
- `grid-col-8` - 8 column wide item
- `grid-col-9` - 9 column wide item
- `grid-col-10` - 10 column wide item
- `grid-col-11` - 11 column wide item
- `grid-col-12` - 12 column wide item

It is also possible to specify the gap between the columns and rows.

**Column gap**

- `grid-gap-col-xl`
- `grid-gap-col-l`
- `grid-gap-col`
- `grid-gap-col-s`
- `grid-gap-col-xs`
- `grid-gap-col-zero`

**Row gap**

- `grid-gap-row-xl`
- `grid-gap-row-l`
- `grid-gap-row`
- `grid-gap-row-s`
- `grid-gap-row-xs`
- `grid-gap-row-zero`

**Column and row gap**

- `grid-gap-xl`
- `grid-gap-l`
- `grid-gap`
- `grid-gap-s`
- `grid-gap-xs`
- `grid-gap-zero`

You have to set the gap class with a grid type, for example `<div class="grid-321 grid-gap-xl">`. This grid will use an extra large gap between the elements. Or `<div class="grid-432 grid-gap-col-s grid-gap-row-l">` small column gap and large row gap.

#### Dividing grids

It is possible to place a responsive grid inside another grid, so if you need more columns feel free to combine them.

### Table

Tables rows are displayed as grids in Peacock CSS. It is possible to override the layout of a table row through grid classes. 

```html
<table>
	<thead>
	    <tr class="grid-311">
	        <td>1</td>
	        <td>2</td>
	        <td>3</td>
	    </tr>
	</thead>
	<tbody>
	    <tr class="grid-311">
	        <td>a</td>
	        <td>b</td>
	        <td>c</td>
	        
	    </tr>
	    <tr class="grid-311">
	        <td>d</td>
	        <td>e</td>
	        <td>f</td>
	        
	    </tr>
	</tbody>
</table>
```

You can use different grid classes for each row.

## Spacing and sizing

### Margin

You can set margins as class variants using the following format: `margin-[property]-[variant]`.

**Properties**

- top
- bottom
- left
- right
- horizontal (left + right)
- vertical (top + bottom)

If you don't specify a property, all margins will be set (top, bottom, left, right).

**Variants**

- auto
- xl
- l
- [normal is empty]
- s
- xs
- zero

**Examples**

- `margin-horizontal-auto` - left and right auto
- `margin-top` - normal top margin
- `magin-xl` - extra large margin (top, left, right, bottom)
- `margin-bottom-zero` - no bottom margin

Margin size will be calculated based on your browser window size (it's responsive).

### Padding

Padding works exactly the same as margin (see above), except you have to write the padding keyword (obviously). 

- `padding-top-xl` - extra large top padding
- `padding-s` - small padding (top, bottom, left, right)
- `padding-vertical-l` - large vertical padding (top, bottom)
- `padding-top-zero` - no top padding

### Size

There are a few predefined size values available in Peacock CSS. Size values are NOT responsive, but they use pixel values.

- auto - auto
- full - 100% 
- xl - 256px
- l - 128px 
- normal - 64px 
- s - 32px 
- xs - 16px
- zero - 0px

The following classes are available to specify width, height or both (size).

**Width**

- `size-width-auto`
- `size-width-full`
- `size-width-xl`
- `size-width-l`
- `size-width`
- `size-width-s`
- `size-width-xs`
- `size-width-zero`

**Height**

- `size-height-auto`
- `size-height-full`
- `size-height-xl`
- `size-height-l`
- `size-height`
- `size-height-s`
- `size-height-xs`
- `size-height-zero`

**Size** (width + height)

- `size-auto`
- `size-full`
- `size-xl`
- `size-l`
- `size`
- `size-s`
- `size-xs`
- `size-zero`

Sometimes you also want to display an element as a block when defining size, see the utilities section for more info.

## Form elements

Form element styles are rewritten from scratch, you can use the following elements without any extra CSS code.

### Buttons

Documentation is coming soon.

```html
<input type="submit" value="Submit">

<input type="reset" value="Reset">

<button>Submit form</button>

<a href="#" class="button">Lorem ipsum</a>
```

### Input

Documentation is coming soon.

```html
<input type="text" placeholder="Email address">
```

### Textarea

Documentation is coming soon.

```html
<textarea placeholder="Hello world"></textarea>
```

**Sizes**

- xl

- l

- normal

- s

- xs

```html
<textarea class="xl" placeholder="Hello world"></textarea>
```

### Radio

Documentation is coming soon.

```html
<input type="radio"><label>Lorem ipsum</label><br>
```

### Checkbox

Documentation is coming soon.

```html
<input type="checkbox"><label>Lorem ipsum</label><br>
```

### Select

Documentation is coming soon.

```html
<select>
  <option>Lorem ipsum 1</option>
  <option>Lorem ipsum 2</option>
  <option>Lorem ipsum 3</option>
  <option>Lorem ipsum 4</option>
</select>
```

Multiple

```html
<select multiple="multiple">
  <option>Lorem ipsum 1</option>
  <option>Lorem ipsum 2</option>
  <option>Lorem ipsum 3</option>
  <option>Lorem ipsum 4</option>
</select>
```

### Fieldset

Documentation is coming soon.

```html
<fieldset>
  <legend>Lorem ipsum</legend>
</fieldset>
```



## Colors

Peacock CSS defines colors based on the [Color](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/) - Human Interface Guide document created by Apple.

Colors may vary based on your interface color scheme (light mode, dark mode).

The `color` proprety always refers to the foreground color of an element, the `background` class will set the background color value.

**Black & white**

- `white-color` 
- `white-background`
- `black-color`
- `black-background`

These colors won't change based on your environment (light mode, dark mode). 

**Link colors**

Link colors are used for hyperlink color values, they can vary based on your environment.

- `link-color`
- `link-color-1`
- `link-color-2`
- `link-color-3`

**Gray**

Gray color is available in six variations, they may vary based on your interface color scheme (light, dark)

- `color` 
- `color-1`
- `color-2`
- `color-3`
- `color-4`
- `color-5`
- `color-6`

It can be used as a background value as well.

- `background`
- `background-1`
- `background-2`
- `background-3`
- `background-4`
- `background-5`
- `background-6`

**Colors**

The following color values are available for both light and dark mode with a slight difference. 

- blue
- green
- indigo
- orange
- pink
- purple
- red
- teal
- yellow
- brown
- gray

Foreground color values

- `blue-color`
- `green-color`
- `indigo-color`
- `orange-color`
- `pink-color`
- `purple-color`
- `red-color`
- `teal-color`
- `yellow-color`
- `brown-color`
- `gray-color`

Background values

- `blue-background`
- `green-background`
- `indigo-background`
- `orange-background`
- `pink-background`
- `purple-background`
- `red-background`
- `teal-background`
- `yellow-background`
- `brown-background`
- `gray-background`



## Utilities

### Menu

Peacock CSS provides a responsive CSSS only hamburger menu by default.

```html
<header id="header">
  <a href="/" id="logo">
    <img src="images/logo-text.png">
  </a>

  <input type="checkbox" id="menu-button" class="selection-off" />
  <label for="menu-button" id="menu-icon" class="selection-off"><span></span></label>

  <nav id="nav">
    <li><a href="#" class="selected">Lorem ipsum</a></li>
    <li><a href="#">Lorem ipsum</a></li>
    <li><a href="#">Lorem ipsum</a></li>
    <li><a href="#">Lorem ipsum</a></li>
    <li><a href="#">Lorem ipsum</a></li>
  </nav>
</header>
```

You can use the following HTML code to create a new menu.

### Display

You can set the display property of an element by using the following classes.

- `display-block`
- `display-inline`
- `display-inline-block`
- `display-none`

For example: `<span class="display-block size-s margin text-align-center">💡</span>` 

### Radius

It is possible to set the border radius of an element:

`radius-full` - 9999px
`radius-xl` 
`radius-l`
`radius`
`radius-s`
`radius-xs`
`radius-zero` - 0px

Radius values are responsive, except the full and zero variants.

### Shadow

There are some default shadow and inner-shadow values that you can use to enhance elements. 

**Shadow**

- `shadow-full`
- `shadow-xl`
- `shadow-l`
- `shadow`
- `shadow-s`
- `shadow-xs`
- `shadow-zero` - removes every shadow (inner shadows too)

**Inner shadow**

- `shadow-inner-full`
- `shadow-inner-xl`
- `shadow-inner-l`
- `shadow-inner`
- `shadow-inner-s`
- `shadow-inner-xs`

Shadows are not responsive. 

### Rotate

You can rotate an element with the help of the rotation classes.

**Values**

- full - 90deg

- xl - 60deg

- l - 45deg

- normal - 30 deg 

- s - 15 deg

- xs - 5deg

**Left**

- `rotate-left-full`
- `rotate-left-xl`
- `rotate-left-l`
- `rotate-left`
- `rotate-left-s`
- `rotate-left-xs`

**Right**

- `rotate-right-full`
- `rotate-right-xl`
- `rotate-right-l`
- `rotate-right`
- `rotate-right-s`
- `rotate-right-xs`

**Reset**

- `rotate-zero` - 0deg

The rotate-zero class will reset the previous rotation back to zero degree.



### Border

There are 6 border variations based on the default gray color.

- `border-xl`
- `border-l`
- `border`
- `border-s`
- `border-xs`



- `border-1-xl`
- `border-1-l`
- `border-1`
- `border-1-s`
- `border-1-xs`



- `border-2-xl`
- `border-2-l`
- `border-2`
- `border-2-s`
- `border-2-xs`



- `border-3-xl`
- `border-3-l`
- `border-3`
- `border-3-s`
- `border-3-xs`



- `border-4-xl`
- `border-4-l`
- `border-4`
- `border-4-s`
- `border-4-xs`



- `border-5-xl`
- `border-5-l`
- `border-5`
- `border-5-s`
- `border-5-xs`



- `border-6-xl`
- `border-6-l`
- `border-6`
- `border-6-s`
- `border-6-xs`

### Separator

A separator is essentailly a gray line (border-bottom value) that looks great both on light and dark interface.

- `separator-xl `
- `separator-l`
- `separator`
- `separator-s`
- `separator-xs`

### Selection

It is possible to display the selection from an element by using the `selection-off` class.

### List style 

It is possible to disable the list style markers by using the `list-style-off` class.