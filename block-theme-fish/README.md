# WordPress Block Theme - Fish Theme Example

This directory demonstrates how to create a modern WordPress Block Theme with cover blocks, parallax effects, query loops, and featured images using the WordPress Block Editor.

## Live Demo

```url
https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/block-theme-fish/bundle/block-theme-fish.zip
```

## Documentation

For a complete step-by-step tutorial on creating this Block Theme, see the [Block Theme Fish Tutorial](block-theme-fish-tutorial.md).

## What This Example Shows

This WordPress Block Theme demonstrates modern full-site editing techniques that showcase the power of WordPress blocks for creating beautiful, dynamic websites.

### Layout Features

- **Parallax Cover Blocks** - Hero section with stunning depth effect
- **Centered Logo Overlay** - Professional branding on hero image
- **Query Loop Pattern** - Automatically displays latest posts
- **Featured Image Integration** - Dynamic images from Media Library
- **Gradient Text Effects** - Radial gradient styling on post titles
- **3-Column Responsive Grid** - Adapts perfectly to all screen sizes
- **Equal Height Cards** - Consistent post display with 4:3 aspect ratio

### The Problem This Solves

Traditional WordPress themes require PHP template files, custom CSS, plugin dependencies, and technical knowledge to modify.

This Block Theme provides a code-free solution using only native WordPress blocks, Block Editor controls, and theme.json configuration. No plugins required.

### Key Technologies

- **Block Theme Architecture** - Modern FSE-compatible theme structure
- **Cover Blocks** - Full-width hero sections with backgrounds
- **Parallax Effects** - Depth and motion on scroll
- **Query Loop Blocks** - Dynamic content display
- **Post Template Blocks** - Custom post layouts
- **Featured Images** - Post thumbnails
- **Grid Layout** - Responsive multi-column display
- **Gradient Styles** - CSS gradient text effects
- **theme.json** - Centralized theme configuration

Perfect for portfolio sites, photography blogs, wildlife websites, aquarium showcases, nature documentation, and learning modern WordPress Block Theme development.

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
├── blueprint.json      # WordPress Playground auto-setup
├── README.md           # This file
├── content.xml         # Pages, posts & images (WXR format)
├── theme/
│   └── fish.zip        # Block Theme files
├── uploads/            # Images and fonts
└── bundle/
    └── block-theme-fish.zip   # Self-contained one-file demo
```

## Theme Structure

The Fish Block Theme includes:

```text
fish/
├── style.css           # Theme header & metadata
├── theme.json          # Theme configuration (colors, fonts, spacing)
├── templates/          # Page templates (front-page, home, single, page, archive, search, 404 ...)
├── parts/              # Reusable template parts (header.html, footer.html)
└── patterns/           # Block patterns
```

## Technical Requirements

- WordPress Version: 6.8+ (Fish is a child theme of Twenty Twenty-Five)
- PHP Version: 7.2+
- Block Editor (Gutenberg)

The Playground demo boots the latest WordPress and PHP and installs the current Twenty Twenty-Five as parent theme, so it stays up to date automatically.

## Learning Resources

- **Tutorial**: [block-theme-fish-tutorial.md](block-theme-fish-tutorial.md) - Complete step-by-step guide
- **WordPress Block Theme Docs**: [developer.wordpress.org/themes/block-themes](https://developer.wordpress.org/themes/block-themes/)
- **theme.json Reference**: [developer.wordpress.org/themes/advanced-topics/theme-json](https://developer.wordpress.org/themes/advanced-topics/theme-json/)
- **Query Loop Guide**: [wordpress.org/support/article/query-loop-block](https://wordpress.org/support/article/query-loop-block/)

## License

This project is open source and available under the MIT License.
