# WordPress Block Theme Tutorial - Fish Theme

This tutorial shows you how to create a custom **WordPress Block Theme** with a homepage featuring a cover block with parallax effect and a query loop displaying posts with featured images.

## What You'll Build

A complete WordPress Block Theme with:
- Custom homepage with hero section
- Cover block with parallax background image
- Centered logo overlay
- Query loop displaying posts in a 3-column grid
- Featured images for each post
- Gradient text effects on post titles
- Responsive design

## Prerequisites

- WordPress 6.0 or higher
- Basic knowledge of WordPress Block Editor
- Understanding of HTML/CSS (helpful but not required)

## Part 1: Understanding Block Themes

### What is a Block Theme?

A **Block Theme** is a modern WordPress theme that:
- Uses only blocks for all layouts (no PHP templates)
- Configured via `theme.json` instead of PHP functions
- Templates are HTML files with block markup
- Fully compatible with Full Site Editing (FSE)

### Block Theme Structure

```
fish-theme/
├── style.css          # Theme metadata
├── theme.json         # Theme configuration
├── templates/         # Page templates
│   └── index.html
└── parts/            # Reusable template parts
    ├── header.html
    └── footer.html
```

## Part 2: Creating the Homepage Layout

### Step 1: Create a New Page

1. Log into WordPress Dashboard
2. Go to **Pages** → **Add New Page**
3. Title: "Fische" (Fish)

### Step 2: Add Cover Block with Parallax

**Insert Cover Block:**
1. Click the **"+"** button
2. Search for **"Cover"**
3. Select **"Cover"** block

**Add Background Image:**
1. Click **"Upload"** or **"Media Library"**
2. Select your sea reef wallpaper image
3. The image fills the cover block

**Enable Parallax Effect:**
1. With the cover block selected, go to the **Settings sidebar** (right side)
2. Scroll to **"Fixed background"**
3. Toggle **"Fixed background"** OFF
4. Look for **"Repeated background"** section
5. Toggle **"Fixed background"** to enable **Parallax** effect

**Adjust Cover Block Settings:**
1. In the settings sidebar, find **"Minimum height"**
2. Set to **"35"** with unit **"em"**
3. Scroll to **"Overlay"**
4. Set **"Opacity"** to **"0"** (no dark overlay)

### Step 3: Add Logo Image Inside Cover

**With the Cover block selected:**
1. Click the **"+"** inside the cover block
2. Select **"Image"**
3. Upload your fish logo (e.g., cropped-Fisch-Titelseite.webp)

**Style the Logo:**
1. Select the image
2. In the toolbar, click **"Align center"**
3. In the settings sidebar:
   - Set **"Width"** to **"400px"**
4. The image is now centered in the cover block

### Step 4: Add Heading Inside Cover

**Below the image, add a heading:**
1. Click **"+"** in the cover block
2. Select **"Heading"**
3. Type: "Naturwunder unter Wasser" (Natural wonders underwater)

**Style the Heading:**
1. Select the heading
2. In the toolbar:
   - Click **"Align text center"**
   - Choose **"XX-Large"** font size
3. In the settings sidebar → **"Styles"** → **"Text"**:
   - Set **"Text color"** to **"Contrast"** (white)

## Part 3: Adding the Content Section

### Step 5: Create Main Content Group

**Below the Cover block:**
1. Click **"+"**
2. Select **"Group"**
3. In the settings sidebar:
   - Set **"HTML element"** to **"main"**

**Add Padding:**
1. With the group selected
2. Go to **"Styles"** → **"Dimensions"** → **"Padding"**
3. Set **"Top"** and **"Bottom"** to **"40"** (uses theme spacing)

### Step 6: Add Section Heading

**Inside the main group:**
1. Add a **"Heading"**
2. Type: "Entdecke sie mit mir ..." (Discover them with me...)
3. Set **"Align text center"**
4. Set font size to **"XX-Large"**

### Step 7: Create Query Loop

**Below the heading:**
1. Click **"+"**
2. Search for **"Query Loop"**
3. Select **"Query Loop"**

**Configure Query Settings:**
1. Select the Query Loop block
2. In the settings sidebar, click **"Settings"**
3. Under **"Query"**:
   - **Post type:** "Posts"
   - **Order by:** "Date"  
   - **Order:** "Descending"
   - **Items:** "6"

### Step 8: Design Post Template

**The Query Loop contains a "Post Template" block:**

1. **Delete default content** inside the Post Template
2. Add a **"Cover"** block inside the Post Template

**Configure Post Cover:**
1. Select the Cover block
2. In settings sidebar:
   - Toggle **"Use featured image"** ON
   - Set **"Minimum height"** to **"30vw"**
   - Set **"Opacity"** to **"0"**

**Add Post Title Inside Cover:**
1. Click **"+"** inside the cover
2. Search for **"Post Title"**
3. Select **"Post Title"**

**Style Post Title:**
1. Select the Post Title
2. In settings:
   - Check **"Make title a link"**
   - **"Align text center"**
   - **"Font size"** → "XX-Large"

**Add Gradient to Title:**
1. With Post Title selected
2. Go to **"Styles"** → **"Color"** → **"Gradient"**
3. Custom CSS gradient:
   ```
   radial-gradient(rgb(6,147,227) 0%, rgb(155,81,224,0) 100%)
   ```
4. This creates a radial blue gradient behind the text

### Step 9: Configure Grid Layout

**Select the Post Template block:**
1. In settings sidebar → **"Layout"**
2. Choose **"Grid"**
3. Set **"Columns"** to **"3"**
4. Set **"Column gap"** and **"Row gap"** as desired

**Set Aspect Ratio for Images:**
1. Select the Cover block (inside Post Template)
2. Go to **"Dimensions"** → **"Aspect ratio"**
3. Set to **"4/3"**

## Part 4: Adding Featured Images to Posts

### Step 10: Assign Featured Images

**For each fish post:**

1. Go to **Posts** → **All Posts**
2. Open a post (e.g., "Labyrinthfische")
3. In the **Document sidebar** (right), scroll to **"Featured image"**
4. Click **"Set featured image"**
5. Select the corresponding fish image from Media Library
6. Click **"Set featured image"**
7. **Update** the post

**Repeat for all 6 fish posts:**
- Labyrinthfische → Labyrinthfische.webp
- Diskusfische → Diskusfische.webp
- Siamesischer Kampffisch → Siamesischer-Kampffisch.webp
- Schleierschwanz-Goldfisch → Schleierschwanz-Goldfisch.webp
- Malabarbaerbling → Malabarbaerbling.webp
- Clownfisch → Clownfisch.webp

## Part 5: Setting as Homepage

### Step 11: Configure Reading Settings

1. Go to **Settings** → **Reading**
2. Under **"Your homepage displays"**:
   - Select **"A static page"**
   - **Homepage:** Select "Fische"
3. Click **"Save Changes"**

## Part 6: Creating a Block Theme

### Step 12: Theme Structure

If you want to convert this to a reusable Block Theme:

**Create theme files:**

**1. style.css**
```css
/*
Theme Name: Fish Theme
Theme URI: https://example.com
Author: Your Name
Author URI: https://example.com
Description: A Block Theme showcasing fish with parallax effects
Version: 1.0
Requires at least: 6.0
Tested up to: 6.4
Requires PHP: 7.4
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Text Domain: fish-theme
*/
```

**2. theme.json**
```json
{
  "$schema": "https://schemas.wp.org/trunk/theme.json",
  "version": 2,
  "settings": {
    "color": {
      "palette": [
        {
          "slug": "primary",
          "color": "#0693e3",
          "name": "Primary Blue"
        },
        {
          "slug": "contrast",
          "color": "#ffffff",
          "name": "White"
        }
      ]
    },
    "spacing": {
      "units": ["px", "em", "rem", "vh", "vw", "%"]
    }
  }
}
```

**3. templates/index.html**
- Export your page content as HTML blocks
- Save in this file

## Tips & Best Practices

### Responsive Design
- Use **"vw"** units for flexible sizing
- Set **minimum column width** in grid: "23rem"
- Test on mobile devices

### Performance
- Optimize images (use WebP format)
- Use appropriate image sizes
- Enable lazy loading (automatic in WordPress)

### SEO
- Add alt text to all images
- Use proper heading hierarchy (H2 for main sections)
- Write descriptive post excerpts

## Troubleshooting

**Problem: Parallax not working**
- Solution: Make sure "Fixed background" is enabled in Cover block settings

**Problem: Images not showing in Query Loop**
- Solution: Verify featured images are set for all posts

**Problem: Layout breaks on mobile**
- Solution: Check that grid has minimum column width set

**Problem: Gradient not visible on text**
- Solution: Ensure text color contrasts with gradient background

## Next Steps

**Enhance Your Theme:**
- Add custom patterns for reusable layouts
- Create custom template parts (header, footer)
- Add more color palettes in theme.json
- Create additional page templates
- Add custom fonts via theme.json

## Resources

- [WordPress Block Theme Documentation](https://developer.wordpress.org/themes/block-themes/)
- [theme.json Reference](https://developer.wordpress.org/themes/advanced-topics/theme-json/)
- [Block Editor Handbook](https://developer.wordpress.org/block-editor/)
- [Query Loop Documentation](https://wordpress.org/support/article/query-loop-block/)

## Conclusion

Congratulations! You've created a modern WordPress Block Theme with:
- Parallax cover block
- Dynamic query loop
- Featured images
- Gradient text effects
- Responsive grid layout
- Full Site Editing compatibility

Your theme is now ready to showcase content beautifully!
