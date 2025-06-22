<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/homepage">
    <html>
      <head>
        <title>
          <xsl:value-of select="header/title"/>
        </title>
        <link rel="stylesheet" href="../../css/style.css"/>
      </head>
      <body>
        <iframe src="../../components/navbar.html" class="navbar-frame" title="Navigation Bar"></iframe>
        <div class="global-header">
          <div class="global-header-bg"></div>
          <div class="global-header-content">
            <h1 class="global-header-title">
              <xsl:value-of select="header/title"/>
            </h1>
            <p class="global-header-desc">
              <xsl:value-of select="header/description"/>
            </p>
          </div>
        </div>
        <main class="section-container section-home">
          <div class="features-list">
            <xsl:for-each select="features/feature">
              <div class="feature-card">
                <span class="feature-icon">
                  <xsl:value-of select="icon"/>
                </span>
                <h3>
                  <xsl:value-of select="title"/>
                </h3>
                <p>
                  <xsl:value-of select="desc"/>
                </p>
              </div>
            </xsl:for-each>
          </div>
          <div class="cta-section">
            <h2>
              <xsl:value-of select="cta/heading"/>
            </h2>
            <a href="{cta/buttonLink}" class="cta-button">
              <xsl:value-of select="cta/buttonText"/>
            </a>
          </div>
          <section class="events-section">
            <h2>Upcoming Events</h2>
            <div class="events-list">
              <xsl:for-each select="events/event">
                <div class="event-card">
                  <span class="event-icon">
                    <xsl:value-of select="icon"/>
                  </span>
                  <h4>
                    <xsl:value-of select="title"/>
                  </h4>
                  <p>
                    <xsl:value-of select="desc"/>
                  </p>
                  <span class="event-date">
                    <xsl:value-of select="date"/>
                  </span>
                </div>
              </xsl:for-each>
            </div>
          </section>
          <section class="info-section">
            <h2>Plan Your Visit</h2>
            <ul class="info-list">
              <xsl:for-each select="info/item">
                <li>
                  <strong>
                    <xsl:value-of select="label"/>
                  </strong>
                  <xsl:value-of select="text()"/>
                </li>
              </xsl:for-each>
            </ul>
          </section>
          <section class="newsletter-section">
            <h2>
              <xsl:value-of select="newsletter/heading"/>
            </h2>
            <p>
              <xsl:value-of select="newsletter/desc"/>
            </p>
            <form class="newsletter-form">
              <input type="email" placeholder="Your email address" required="required"/>
              <button type="submit">Subscribe</button>
            </form>
          </section>
        </main>
        <iframe src="../../components/footer.html" class="footer-frame" title="Footer"></iframe>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>