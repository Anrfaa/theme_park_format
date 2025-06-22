<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/packagesPage">
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
        <main>
          <section class="section-container scrollable-section">
            <div class="packages-list">
              <xsl:for-each select="packageGroups/packageGroup">
                <h3 class="package-group-title">
                  <xsl:value-of select="groupTitle"/>
                </h3>
                <xsl:for-each select="package">
                  <div class="package-card">
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="concat('../../', img)"/>
                      </xsl:attribute>
                      <xsl:attribute name="alt">
                        <xsl:value-of select="alt"/>
                      </xsl:attribute>
                      <xsl:attribute name="class">package-img</xsl:attribute>
                    </img>
                    <h4>
                      <xsl:value-of select="name"/>
                    </h4>
                    <ul>
                      <xsl:for-each select="features/feature">
                        <li>
                          <xsl:value-of select="."/>
                        </li>
                      </xsl:for-each>
                    </ul>
                    <p class="price">
                      <xsl:value-of select="price"/>
                    </p>
                    <div class="package-btn-wrap">
                      <button>Book Now</button>
                    </div>
                  </div>
                </xsl:for-each>
              </xsl:for-each>
            </div>
          </section>
        </main>
        <iframe src="../../components/footer.html" class="footer-frame" title="Footer"></iframe>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>