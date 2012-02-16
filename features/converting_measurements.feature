Feature:
  Gives the user a set of tools that can be used to convert
  values from one unit into another.

  Scenario Outline: converting pts to ems
    When I run `css_pal pt_to_em <pt>`
    Then it should pass with:
      """
      <em>
      """

    Examples:
      | pt | em    |
      |  6 | 0.5em |
      | 12 | 1.0em |
      | 14 | 1.2em |
      | 24 | 2.0em |

  Scenario Outline: converting ems to percents
    When I run `css_pal em_to_percent <em>`
    Then it should pass with:
      """
      <percent>
      """

    Examples:
      | em  | percent |
      | 0.5 |  50%    |
      | 1   | 100%    |
      | 1.2 | 120%    |
      | 2   | 200%    |
