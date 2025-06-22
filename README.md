# ThemeParkFormat

A theme park website powered by XML and XSLT, demonstrating data-driven web pages and schema validation.

## Structure

```
ThemeParkFormat/
  index.html
  homepage.html
  packages.html
  Dockerfile
  xslt.conf
  components/
    navbar.html
    footer.html
  css/
    style.css
    navbar.css
    footer.css
  img/
    global-header.jpg
  pages/
    homepage/
      homepage.xml
      homepage.xsd
      homepage.xslt
    packages/
      packages.xml
      packages.xsd
      packages.xslt
```

## Features

- **XML/XSLT Rendering**: Homepage and packages pages are generated from XML using XSLT.
- **Schema Validation**: Each XML file has an XSD schema.
- **Reusable Components**: Navbar and footer included via `<iframe>`.
- **Docker Support**: Run with Apache and correct MIME types for XSLT.

## Usage

### 1. View XML/XSLT Pages

- Open [`pages/homepage/homepage.xml`](ThemeParkFormat/pages/homepage/homepage.xml) or [`pages/packages/packages.xml`](ThemeParkFormat/pages/packages/packages.xml) in a browser that supports XSLT (e.g., Firefox).

### 2. Run with Docker

```sh
cd ThemeParkFormat
docker build -t themepark .
docker run -p 8080:80 themepark
```
Visit [http://localhost:8080/](http://localhost:8080/) in your browser.

### 3. Static HTML

- [`homepage.html`](ThemeParkFormat/homepage.html) and [`packages.html`](ThemeParkFormat/packages.html) are static HTML versions.

## Customization

- **XML Content**: Edit XML files in [`pages/`](ThemeParkFormat/pages/).
- **XSLT Templates**: Edit XSLT files for layout changes.
- **Navbar/Footer**: Edit in [`components/`](ThemeParkFormat/components/).
- **Styles**: Modify CSS in [`css/`](ThemeParkFormat/css/).

## License

For demo/educational use. Replace content and images
