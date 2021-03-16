![](https://github.com/BinaryBirds/peacock-css/blob/main/Public/images/logo-text.png?raw=true)

# Peacock CSS

Peacock is a modern, responsive CSS boilerplate library to kickstart any web-based project. 

It is simple, lightweight and it contains all the basic components required to build a modern web page.

Inspired by [Skeleton CSS](http://getskeleton.com)

Compatible with [Normalize.css](https://necolas.github.io/normalize.css/)


### Installation

You can use [jsDelivr](https://www.jsdelivr.com) to link Peacock CSS into your project:

```
https://cdn.jsdelivr.net/gh/binarybirds/peacock-css@1.0.0-beta.6/peacock.min.css
```

Just use a standard HTML `link` tag to link the library as an external stylesheet.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Demo</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/binarybirds/peacock-css@1.0.0-beta.6/peacock.min.css">
</head>
<body>
    <main>
        <h1>Hello world!</h1>
        <p>This is a simple Peacock CSS demo.</p>
    </main>
</body>
</html>
```

You should always use the minified version and it is also recommended to use a CDN server.

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

The following heading sizes are styled in Peacock CSS:

- `h1`
- `h2`
- `h3`
- `h4`
- `h5`
- `h6`


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


## Layout

### Containers

 - `lead` - lead element for displaying a separate h1 and p element
- `container` - preferred container size for reading textual content (responsive)

It is really simple to create a container element.

```html
<div class="lead">
    <h1>Title</h1>
    <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. </p>
</div>

<div class="container">
	<h2>Subtitle</h2>

	<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

	<h3>Other sub-sub-title</h3>
	<p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies. Cras imperdiet ligula eu eros faucibus cursus. Quisque aliquam suscipit justo a sollicitudin. Sed vitae purus erat. Vivamus bibendum vel leo at hendrerit. Pellentesque auctor at nisi non tempor. Suspendisse eget posuere libero. Quisque interdum nunc non turpis lobortis hendrerit. Integer maximus varius metus nec tempor. Duis volutpat ligula eu elementum imperdiet. Nunc elit libero, hendrerit ornare fermentum id, ultricies eu quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>

```
The container used in the snippet above will scale based on your screen size. The content inside of it will be positioned in the middle of the screen.


### Grid

Grids are responsive by default. The Desktop-Tablet-Mobile (DTM) system allows you to specify grid variants based on how many columns you want for each size. Of course you can choose a fixed column size grid, but usually that's not the case you want. Here's a list of available grids:

**Fixed colum grids** 

- `grid-2`
- `grid-3`
- `grid-4`
- `grid-5`
- `grid-6`
- `grid-9`

The number suffix represents the number of columns on every screen.

**DTM grids**

2-column-based responsive grids:

- `grid-221` - 2 columns on desktop, tablet, 1 column on mobile screens

3-column-based responsive grids:

- `grid-321` - 3 columns on desktop, 2 column on tablet, 1 column on mobile screens

4-column-based responsive grids:

- `grid-421` - 4 columns on desktop, 2 columns on tablet, 1 column on mobile screens


The most common use-case is a 321 grid. Here's a quick feature box example:

```html
<div class="grid-321">
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
    <div>
        <span class="icon">🦚</span>
        <h3>Feature</h3>
        <p>Suspendisse sit amet ante scelerisque, cursus arcu eu, consequat ex. Nullam euismod eros in consequat ultricies.</p>
    </div>
</div>

```

The grid column span is 1 for every child element inside the grid. You can override this behavior with the column gap and row gap as well.

#### Dividing grids

It is possible to place a responsive grid inside another grid, so if you need more columns feel free to combine them.

### Table

Tables rows are displayed as grids in Peacock CSS. It is possible to override the layout of a table row through grid classes. 

```html
<table>
	<thead>
	    <tr class="grid-321">
	        <td>1</td>
	        <td>2</td>
	        <td>3</td>
	    </tr>
	</thead>
	<tbody>
	    <tr class="grid-321">
	        <td>a</td>
	        <td>b</td>
	        <td>c</td>
	        
	    </tr>
	    <tr class="grid-321">
	        <td>d</td>
	        <td>e</td>
	        <td>f</td>
	        
	    </tr>
	</tbody>
</table>
```

You can use different grid classes for each row. Alternatively you can set the grid layout on the table row elements explicitly by using the `grid-column-template` property.

## Spacing and sizing

### Space

You can use the following CSS variables to setup a consistent spacing structure:

```
--space-4xl: 4.5rem;
--space-3xl: 3rem;
--space-2xl: 2.5rem;
--space-xl: 2rem;
--space-l: 1.75rem;
--space: 1.5rem;
--space-s: 1rem;
--space-xs: 0.75rem;
--space-2xs: 0.5rem;
--space-3xs: 0.25rem;
--space-4xs: 0.125rem;
```

### Font size

You can use the following CSS variables to explicitly set font sizes:

```
--font-size-4xl: 2.5rem;
--font-size-3xl: 1.75rem;
--font-size-2xl: 1.5rem;
--font-size-xl: 1.25rem;
--font-size-l: 1.125rem;
--font-size: 1rem;
--font-size-s: 0.875rem;
--font-size-xs: 0.75rem;
--font-size-2xs: 0.5rem;
```


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
- normal (without suffix)
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

**Site colors**

There are 4 major site color variables available to use: 

- `--color` 
- `--color-1`
- `--color-2`
- `--color-3`

**Background colors**

The following background color values are available to use: 

- `--bg-color`
- `--bg-color-1`
- `--bg-color-2`
- `--bg-color-3`
- `--bg-color-4`

**Background colors**

The following text color values are available to use: 

- `--text-color`
- `--text-color-1`
- `--text-color-2`
- `--text-color-3`


**Other colors**

The following color values are available for both light and dark mode with a slight difference (white and black are always white and black). 


- `--white-color`
- `--black-color`
- `--blue-color`
- `--green-color`
- `--indigo-color`
- `--orange-color`
- `--pink-color`
- `--purple-color`
- `--red-color`
- `--teal-color`
- `--yellow-color`
- `--brown-color`
- `--gray-color`


## Utilities

### Menu

Peacock CSS provides a responsive CSS only hamburger menu and a secondary option menu by default.

```html
<div id="navigation">
    <a id="site-logo" href="">
        <img src="/images/logo.png">
    </a>
    
    <nav id="primary-menu">
        <input type="checkbox" id="primary-menu-button" name="menu-button" class="menu-button">
        <label for="primary-menu-button">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="3" y1="12" x2="21" y2="12"></line>
                <line x1="3" y1="6" x2="21" y2="6"></line>
                <line x1="3" y1="18" x2="21" y2="18"></line>
            </svg>
        </label>
        <div class="menu-items">
            <a href="" class="selected">Lorem</a>
            <a href="">Ipsum</a>
            <a href="">Dolor</a>
            <a href="">Sit</a>
            <a href="">Amet</a>
        </div>
    </nav>

    <nav id="secondary-menu">
        <input type="checkbox" id="secondary-menu-button" name="menu-button" class="menu-button">
        <label for="secondary-menu-button">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="12" r="1"></circle>
                <circle cx="12" cy="5" r="1"></circle>
                <circle cx="12" cy="19" r="1"></circle>
            </svg>
        </label>
        <div class="menu-items right">
            <a href="#">My account</a>
            <a href="/">Logout</a>
        </div>
    </nav>
</div>
```

You can use the following HTML code to create a new menu.


### Selection

It is possible to display the selection from an element by using the `selection-off` class.
