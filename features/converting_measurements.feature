Feature:
  Convert measurement values from one unit into another.

  Scenario Outline: converting pts to ems
    When I run `css_pal to_em <pt>`
    Then it should pass with:
      """
      <em>
      """

    Examples:
      | pt   | em    |
      |  6pt | 0.5em |
      | 12pt | 1em   |
      | 14pt | 1.2em |
      | 24pt | 2em   |

  Scenario Outline: converting pixels to ems
    When I run `css_pal to_em <px>`
    Then it should pass with:
      """
      <em>
      """

    Examples:
      | px   | em    |
      |  8px | 0.5em |
      | 16px | 1em   |
      | 18px | 1.1em |
      | 32px | 2em   |

  Scenario Outline: converting ems to percents
    When I run `css_pal to_percent <em>`
    Then it should pass with:
      """
      <percent>
      """

    Examples:
      | em    | percent |
      | 0.5em |  50%    |
      | 1em   | 100%    |
      | 1.2em | 120%    |
      | 2em   | 200%    |

  Scenario Outline: converting pts to percents
    When I run `css_pal to_percent <pt>`
    Then it should pass with:
      """
      <percent>
      """

    Examples:
      | pt   | percent |
      | 6pt  |  50%    |
      | 12pt | 100%    |
      | 14pt | 120%    |
      | 24pt | 200%    |

