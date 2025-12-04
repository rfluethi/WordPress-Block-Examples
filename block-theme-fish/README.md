# WordPress Block Theme - Fish Theme Example

This directory demonstrates how to create a **modern WordPress Block Theme** with cover blocks, parallax effects, query loops, and featured images using the **WordPress Block Editor**.

![Fish Theme Example](screenshot.png)

## Live Demo

```url
https://playground.wordpress.net/?blueprint-url=https://raw.githubusercontent.com/rfluethi/WordPress-Block-Examples/main/block-theme-fish/fish-theme-blueprint.json
```

## Documentation

For a complete step-by-step tutorial on creating this Block Theme, see the [Block Theme Fish Tutorial](block-theme-fish-tutorial.md).

## What This Example Shows

This WordPress Block Theme demonstrates **modern full-site editing techniques** that showcase the power of WordPress blocks for creating beautiful, dynamic websites:

### Layout Features

- **Parallax Cover Blocks** - Hero section with stunning depth effect
- **Centered Logo Overlay** - Professional branding on hero image
- **Query Loop Pattern** - Automatically displays latest posts
- **Featured Image Integration** - Dynamic images from Media Library
- **Gradient Text Effects** - Radial gradient styling on post titles
- **3-Column Responsive Grid** - Adapts perfectly to all screen sizes
- **Equal Height Cards** - Consistent post display with 4:3 aspect ratio

### The Problem This Solves

Traditional WordPress themes require:
- PHP template files for layouts
- Custom CSS for effects
- Plugin dependencies for advanced features
- Technical knowledge to modify

This **Block Theme** provides a **code-free solution** using only:
- Native WordPress blocks
- Block Editor controls
- theme.json configuration
- No plugins required

### Implementation Techniques

- **Cover Blocks** - For hero sections with background images
- **Parallax Effects** - Built-in WordPress parallax feature
- **Query Loops** - Dynamic post display without coding
- **Post Templates** - Custom layouts for query results
- **Featured Images** - WordPress native thumbnail system
- **Gradient Styling** - CSS gradients via Block Editor
- **Grid Layouts** - Responsive column system
- **Full Site Editing** - Complete theme customization via editor

## How It Works

1. **Cover Block Structure**: Hero section uses Cover block with parallax-enabled background
2. **Image Overlay**: Logo is centered using Image block with custom width
3. **Content Organization**: Main content wrapped in semantic `<main>` group
4. **Dynamic Posts**: Query Loop automatically fetches and displays posts
5. **Grid System**: Post Template uses 3-column grid with flexible sizing
6. **Featured Images**: Cover blocks within loop use `useFeaturedImage` attribute
7. **Text Effects**: Post titles styled with radial gradient background

## Key WordPress Features Used

- **Block Theme Architecture** - Modern FSE-compatible theme structure
- **Cover Blocks** - Full-width hero sections with backgrounds
- **Parallax Effects** - Depth and motion on scroll
- **Query Loop Blocks** - Dynamic content display
- **Post Template Blocks** - Custom post layouts
- **Featured Images** - Post thumbnails
- **Group Blocks** - Semantic HTML structure
- **Grid Layout** - Responsive multi-column display
- **Gradient Styles** - CSS gradient text effects
- **theme.json** - Centralized theme configuration

Perfect for: **Portfolio sites**, **photography blogs**, **wildlife websites**, **aquarium showcases**, **nature documentation**, and learning **modern WordPress Block Theme development**.

## Block Theme Advantages

- No coding required for layouts
- Visual editing in real-time
- Fully customizable via Block Editor
- Compatible with Full Site Editing
- Future-proof WordPress architecture
- Mobile-responsive by default
- Accessible and performant

## Directory Structure

```text
/block-theme-fish/
├── fish-theme-blueprint.json       # WordPress Playground auto-setup
├── README.md                       # This file
├── block-theme-fish-tutorial.md    # Step-by-step tutorial
├── media/                          # Fish images
│   ├── Clownfisch.webp
│   ├── Diskusfische.webp
│   ├── Labyrinthfische.webp
│   ├── Malabarbaerbling.webp
│   ├── Schleierschwanz-Goldfisch.webp
│   ├── Siamesischer-Kampffisch.webp
│   ├── Wallpaper-with-a-sea-reef.webp
│   └── cropped-Fisch-Titelseite.webp
├── pages/                          # Page & post content (WXR format)
│   ├── clownfisch.xml
│   ├── diskusfische.xml
│   ├── homepage.xml
│   ├── labyrinthfische.xml
│   ├── malabarbaerbling.xml
│   ├── schleierschwanz-goldfisch.xml
│   └── siamesischer-kampffisch.xml
└── theme/
    └── fish.zip                    # Block Theme files
```

## Theme Structure

The Fish Block Theme includes:

```text
fish-theme/
├── style.css              # Theme header & metadata
├── theme.json            # Theme configuration (colors, spacing, etc.)
├── templates/            # Page templates
│   └── index.html       # Main template
└── parts/               # Reusable template parts
    ├── header.html
    └── footer.html
```

### theme.json Configuration

The theme uses `theme.json` for:
- Color palettes (Primary Blue, Contrast White)
- Spacing units (px, em, rem, vh, vw, %)
- Typography settings
- Layout defaults

### Block Patterns

The homepage demonstrates these block patterns:
- **Hero Section**: Cover + Image + Heading
- **Content Grid**: Query Loop + Post Template + Cover
- **Post Card**: Featured Image + Gradient Title

## Technical Details

**WordPress Requirements:**
- WordPress Version: 6.0+
- PHP Version: 7.4+
- Block Editor (Gutenberg)

**Theme Features:**
- Full Site Editing (FSE) compatible
- No classic templates (PHP-free layouts)
- Fully customizable via Site Editor
- Responsive design built-in
- Accessibility optimized

**Block Configuration:**
```html
<!-- Cover Block with Parallax -->
hasParallax: true
dimRatio: 0
minHeight: 35em

<!-- Query Loop -->
postType: "post"
perPage: 6
layout: grid
columnCount: 3

<!-- Post Cover -->
useFeaturedImage: true
aspectRatio: "4/3"
opacity: 0
```

## Customization Guide

### Modify Homepage Layout

1. Open **Site Editor** → **Templates** → **Homepage**
2. Edit blocks visually
3. Save changes
4. Changes apply site-wide

### Change Colors

Edit `theme.json`:
```json
"color": {
  "palette": [
    {
      "slug": "primary",
      "color": "#YOUR_COLOR",
      "name": "Primary"
    }
  ]
}
```

### Add More Posts

1. Create new post in WordPress
2. Add featured image
3. Publish
4. Automatically appears in Query Loop

### Modify Grid Layout

1. Select Post Template block
2. Change **Columns** setting (e.g., 2 or 4 columns)
3. Adjust **Gap** for spacing

## Learning Resources

- **Tutorial**: See [block-theme-fish-tutorial.md](block-theme-fish-tutorial.md) for detailed instructions
- **WordPress Block Theme Docs**: [developer.wordpress.org/themes/block-themes](https://developer.wordpress.org/themes/block-themes/)
- **theme.json Reference**: [developer.wordpress.org/themes/advanced-topics/theme-json](https://developer.wordpress.org/themes/advanced-topics/theme-json/)
- **Query Loop Guide**: [wordpress.org/support/article/query-loop-block](https://wordpress.org/support/article/query-loop-block/)

## Tips & Best Practices

### Parallax Performance
- Use optimized images (WebP format recommended)
- Avoid extremely large background images
- Test scroll performance on mobile devices

### Responsive Design
- Use viewport units (vw) for flexible sizing
- Set minimum column widths in grid layouts
- Test on various screen sizes

### Accessibility
- Add alt text to all images
- Ensure color contrast meets WCAG standards
- Use proper heading hierarchy

### SEO Optimization
- Write descriptive post titles
- Add post excerpts
- Use featured images for better social sharing

## Version History

### Version 1.3 (Current)
- ✅ Fixed featured image matching with filename mapping
- ✅ Improved PHP script with meta_query fallback
- ✅ Simplified cover block syntax
- ✅ Added comprehensive tutorial documentation

### Version 1.2
- ✅ Separated WXR files for each post
- ✅ Added homepage with query loop
- ✅ Implemented placeholder replacement

### Version 1.1
- ✅ Initial release with theme and content

## License

This project is open source and available under the MIT License.
