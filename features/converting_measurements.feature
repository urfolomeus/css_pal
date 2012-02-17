Feature:
  Gives the user a set of tools that can be used to convert
  values from one unit into another.

  Scenario: running with no arguments
    When I run `css_pal`
    Then it should fail with:
      """
      Correct format css_pal <mode> <value>
      """

  Scenario: running with too few arguments
    When I run `css_pal to_em`
    Then it should fail with:
      """
      Correct format css_pal <mode> <value>
      """

  Scenario: giving an invalid value to a valid method
    When I run `css_pal to_em badger`
    Then it should fail with:
      """
      I don't know how to 'badger_to_em'
      """

  Scenario: giving a valid value to an invalid method
    When I run `css_pal badger 12pt`
    Then it should fail with:
      """
      I don't know how to 'pt_badger'
      """

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

