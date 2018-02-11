<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<!-- /etc/fonts/fonts.conf file to configure system font access -->
<fontconfig>

<!--
	DO NOT EDIT THIS FILE.
	IT WILL BE REPLACED WHEN FONTCONFIG IS UPDATED.
	LOCAL CHANGES BELONG IN 'local.conf'.

	The intent of this standard configuration file is to be adequate for
	most environments.  If you have a reasonably normal environment and
	have found problems with this configuration, they are probably
	things that others will also want fixed.  Please submit any
	problems to the fontconfig bugzilla system located at fontconfig.org

	Note that the normal 'make install' procedure for fontconfig is to
	replace any existing fonts.conf file with the new version.  Place
	any local customizations in local.conf which this file references.

	Keith Packard
-->

<!-- Font directory list -->

	<dir>@FC_DEFAULT_FONTS@</dir>
	@FC_FONTPATH@
	<dir prefix="xdg">fonts</dir>
	<!-- the following element will be removed in the future -->
	<dir>~/.fonts</dir>

<!-- Font cache directory list -->

	<cachedir>@FC_CACHEDIR@</cachedir>
	<cachedir prefix="xdg">fontconfig</cachedir>
	<!-- the following element will be removed in the future -->
	<cachedir>~/.fontconfig</cachedir>

<!--
  Accept deprecated 'mono' alias, replacing it with 'monospace'
-->
	<match target="pattern">
		<test qual="any" name="family">
			<string>mono</string>
		</test>
		<edit name="family" mode="assign">
			<string>monospace</string>
		</edit>
	</match>

<!--
  Accept alternate 'sans serif' spelling, replacing it with 'sans-serif'
-->
	<match target="pattern">
		<test qual="any" name="family">
			<string>sans serif</string>
		</test>
		<edit name="family" mode="assign">
			<string>sans-serif</string>
		</edit>
	</match>

<!--
  Accept deprecated 'sans' alias, replacing it with 'sans-serif'
-->
	<match target="pattern">
		<test qual="any" name="family">
			<string>sans</string>
		</test>
		<edit name="family" mode="assign">
			<string>sans-serif</string>
		</edit>
	</match>

<!--
  Load local system customization file
-->
	<include ignore_missing="yes">conf.d</include>

	<config>
<!--
  These are the default Unicode chars that are expected to be blank
  in fonts.  All other blank chars are assumed to be broken and
  won't appear in the resulting charsets
 -->
		<blank>
			<int>0x0020</int>	<!-- SPACE -->
			<int>0x00A0</int>	<!-- NO-BREAK SPACE -->
			<int>0x00AD</int>	<!-- SOFT HYPHEN -->
			<int>0x034F</int>	<!-- COMBINING GRAPHEME JOINER -->
			<int>0x0600</int>	<!-- ARABIC NUMBER SIGN -->
			<int>0x0601</int>	<!-- ARABIC SIGN SANAH -->
			<int>0x0602</int>	<!-- ARABIC FOOTNOTE MARKER -->
			<int>0x0603</int>	<!-- ARABIC SIGN SAFHA -->
			<int>0x06DD</int>	<!-- ARABIC END OF AYAH -->
			<int>0x070F</int>	<!-- SYRIAC ABBREVIATION MARK -->
			<int>0x115F</int>	<!-- HANGUL CHOSEONG FILLER -->
			<int>0x1160</int>	<!-- HANGUL JUNGSEONG FILLER -->
			<int>0x1680</int>	<!-- OGHAM SPACE MARK -->
			<int>0x17B4</int>	<!-- KHMER VOWEL INHERENT AQ -->
			<int>0x17B5</int>	<!-- KHMER VOWEL INHERENT AA -->
			<int>0x180E</int>	<!-- MONGOLIAN VOWEL SEPARATOR -->
			<int>0x2000</int>	<!-- EN QUAD -->
			<int>0x2001</int>	<!-- EM QUAD -->
			<int>0x2002</int>	<!-- EN SPACE -->
			<int>0x2003</int>	<!-- EM SPACE -->
			<int>0x2004</int>	<!-- THREE-PER-EM SPACE -->
			<int>0x2005</int>	<!-- FOUR-PER-EM SPACE -->
			<int>0x2006</int>	<!-- SIX-PER-EM SPACE -->
			<int>0x2007</int>	<!-- FIGURE SPACE -->
			<int>0x2008</int>	<!-- PUNCTUATION SPACE -->
			<int>0x2009</int>	<!-- THIN SPACE -->
			<int>0x200A</int>	<!-- HAIR SPACE -->
			<int>0x200B</int>	<!-- ZERO WIDTH SPACE -->
			<int>0x200C</int>	<!-- ZERO WIDTH NON-JOINER -->
			<int>0x200D</int>	<!-- ZERO WIDTH JOINER -->
			<int>0x200E</int>	<!-- LEFT-TO-RIGHT MARK -->
			<int>0x200F</int>	<!-- RIGHT-TO-LEFT MARK -->
			<int>0x2028</int>	<!-- LINE SEPARATOR -->
			<int>0x2029</int>	<!-- PARAGRAPH SEPARATOR -->
			<int>0x202A</int>	<!-- LEFT-TO-RIGHT EMBEDDING -->
			<int>0x202B</int>	<!-- RIGHT-TO-LEFT EMBEDDING -->
			<int>0x202C</int>	<!-- POP DIRECTIONAL FORMATTING -->
			<int>0x202D</int>	<!-- LEFT-TO-RIGHT OVERRIDE -->
			<int>0x202E</int>	<!-- RIGHT-TO-LEFT OVERRIDE -->
			<int>0x202F</int>	<!-- NARROW NO-BREAK SPACE -->
			<int>0x205F</int>	<!-- MEDIUM MATHEMATICAL SPACE -->
			<int>0x2060</int>	<!-- WORD JOINER -->
			<int>0x2061</int>	<!-- FUNCTION APPLICATION -->
			<int>0x2062</int>	<!-- INVISIBLE TIMES -->
			<int>0x2063</int>	<!-- INVISIBLE SEPARATOR -->
			<int>0x206A</int>	<!-- INHIBIT SYMMETRIC SWAPPING -->
			<int>0x206B</int>	<!-- ACTIVATE SYMMETRIC SWAPPING -->
			<int>0x206C</int>	<!-- INHIBIT ARABIC FORM SHAPING -->
			<int>0x206D</int>	<!-- ACTIVATE ARABIC FORM SHAPING -->
			<int>0x206E</int>	<!-- NATIONAL DIGIT SHAPES -->
			<int>0x206F</int>	<!-- NOMINAL DIGIT SHAPES -->
			<int>0x3000</int>	<!-- IDEOGRAPHIC SPACE -->
			<int>0x3164</int>	<!-- HANGUL FILLER -->
			<int>0xFEFF</int>	<!-- ZERO WIDTH NO-BREAK SPACE -->
			<int>0xFFA0</int>	<!-- HALFWIDTH HANGUL FILLER -->
			<int>0xFFF9</int>	<!-- INTERLINEAR ANNOTATION ANCHOR -->
			<int>0xFFFA</int>	<!-- INTERLINEAR ANNOTATION SEPARATOR -->
			<int>0xFFFB</int>	<!-- INTERLINEAR ANNOTATION TERMINATOR -->
		</blank>
 <!--
   Rescan configuration every 30 seconds when FcFontSetList is called
 -->
		<rescan>
			<int>30</int>
		</rescan>
	</config>

</fontconfig>
