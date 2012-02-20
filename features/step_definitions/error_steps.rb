Then /^it should fail with help message$/ do
  steps %{
    Then it should fail with:
    """
    Usage:   css_pal <mode> <value> [options]

    Example: css_pal to_em 12pt -p 3

    Modes:
    \tto_em      - convert a value from (pt | px | %) to em
    \tto_percent - convert a value from (pt | px | em) to %
    \tto_hex     - convert an RGB color value to hex

    Options:
        -p, --precision N                Specify the precision of the return value [DEFAULT 1]

    """
  }
end

