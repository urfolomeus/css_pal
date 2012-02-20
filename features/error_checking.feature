Feature:
  Catch and handle common errors

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


