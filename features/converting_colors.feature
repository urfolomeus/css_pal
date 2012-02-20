Feature:
  Convert color values from one unit into another.

  Scenario Outline: converting RGB to hex
    When I run `css_pal to_hex <rgb>`
    Then it should pass with:
      """
      <hex>
      """

    Examples:
      | rgb         | hex     |
      | 255,255,255 | #ffffff |
      | 230,187,5   | #e6bb05 |
      | 255,0,11    | #ff000b |
      | 240,15,0    | #f00f00 |

