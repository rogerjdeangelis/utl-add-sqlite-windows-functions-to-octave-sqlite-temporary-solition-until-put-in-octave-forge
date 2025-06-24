%let pgm=utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge;

%stop_submission;

Adding sqlite windows functions to octave sqlite temporary solution until put in octave forge


HOW TO INSTALL WINDOW EXTENSION PATCHES INTO OCTAVE-SQLITE

Open this hyperlink

https://tinyurl.com/mur9jeu8
https://github.com/rogerjdeangelis/utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge

   1. Click on  octave-sqlite_das.tgz file
   2. Click on download icon |__|
   3. Copy downloader file to d:/zip/octave-sqlite_das.tgz

   4  Open up the OCTAVE CLI (you need this special cmd.exe window)
        GNU Octave 10.2.0
           GNU-Octave-10.2.0 (CLI)

   5  Paste is on the command line
      pkg install -verbose d:/zip/octave-sqlite_das.tgz

   6  Note this patches the existing package. Ignore the unistall error at the end of the install.
      The standard install script loads a completely new vesion and then removes the old one.
      Patching does not replace the current vesion so we get the unistall error at the end of the patch
      where uninstall can rename the new version.
      Just ignore it
   7  Use octave-sqlite just like before
      You now have support for median(), stddev(), or variance() functions and much more


DEMOSTRATE MEDIAN()

%utl_mbegin;
parmcards4;
pkg load sqlite
pkg load io
pkg load database

db = sqlite("d:/sqlite/have.db");

execute(db, 'select load_extension("d:/dll/sqlean")');

execute(db,"drop table if exists numbers");
clear want;

execute(db                                       ...
  ,["  create table numbers (num integer);     " ...
    "  with recursive cnt(x) as (              " ...
    "    select 1                              " ...
    "    union all                             " ...
    "    select x + 1 from cnt where x < 10)   " ...
    "  insert into numbers(num)                " ...
    "  select                                  " ...
    "    median(x) as mx                       " ...
    "  from                                    " ...
    "    cnt                                   " ...
 ]);

want = fetch(db, 'select * from numbers');
disp(want);
close(db)
;;;;
%utl_mend;

/**************************************************************************************************************************/
/*  1x1 table                                                                                                             */
/*                                                                                                                        */
/*  num                                                                                                                   */
/*  ___                                                                                                                   */
/*                                                                                                                        */
/*  5.5                                                                                                                   */
/**************************************************************************************************************************/

/*         _     _          _    __                  _   _
  __ _  __| | __| | ___  __| |  / _|_   _ _ __   ___| |_(_) ___  _ __
 / _` |/ _` |/ _` |/ _ \/ _` | | |_| | | | `_ \ / __| __| |/ _ \| `_ \
| (_| | (_| | (_| |  __/ (_| | |  _| |_| | | | | (__| |_| | (_) | | | |
 \__,_|\__,_|\__,_|\___|\__,_| |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|

*/

/**************************************************************************************************************************************/
/*   NOTE SOME OF THESE FUNCTION ARE ONLY AVAILABLE ON THE SQLITE COMMAND LINE (IE MODE)                                              */
/*               name          define_free    json_group_array      math_ceil           radians            stddev       time_fmt_iso  */
/*                 ->              degrees   json_group_object       math_cos            random        stddev_pop      time_fmt_time  */
/*                ->>           dense_rank         json_insert      math_cosh        randomblob       stddev_samp           time_get  */
/*                abs           difference         json_object   math_degrees              rank             stdev       time_get_day  */
/*               acos         dlevenshtein          json_patch       math_exp          readfile         strfilter      time_get_hour  */
/*              acosh                dur_h         json_pretty     math_floor            regexp          strftime   time_get_isoweek  */
/*                age                dur_m          json_quote        math_ln    regexp_capture        string_agg   time_get_isoyear  */
/*               asin               dur_ms         json_remove       math_log       regexp_like            strpos    time_get_minute  */
/*              asinh               dur_ns        json_replace     math_log10    regexp_replace            substr     time_get_month  */
/*               atan                dur_s            json_set      math_log2     regexp_substr         substring      time_get_nano  */
/*              atan2               dur_us           json_type       math_mod            repeat           subtype    time_get_second  */
/*              atanh        edit_distance          json_valid        math_pi           replace               sum   time_get_weekday  */
/*               atn2               encode               jsonb       math_pow         replicate           symlink      time_get_year  */
/*                avg                 eval         jsonb_array   math_radians           reverse               tan   time_get_yearday  */
/*         bit_length                  exp       jsonb_extract     math_round             right              tanh         time_micro  */
/*             blake3        fileio_append   jsonb_group_array       math_sin          rightstr      text_bitsize         time_milli  */
/*               bm25         fileio_mkdir  jsonb_group_object      math_sinh             round     text_casefold          time_nano  */
/*              btrim          fileio_mode        jsonb_insert      math_sqrt        row_number       text_concat           time_now  */
/*           casefold          fileio_read        jsonb_object       math_tan              rpad     text_contains         time_parse  */
/*         caverphone       fileio_symlink         jsonb_patch      math_tanh          rsoundex        text_count         time_round  */
/*               ceil         fileio_write        jsonb_remove     math_trunc        rtreecheck   text_has_prefix         time_since  */
/*            ceiling          first_value       jsonb_replace            max        rtreedepth   text_has_suffix           time_sub  */
/*            changes                floor           jsonb_set            md5         rtreenode        text_index      time_to_micro  */
/*               char               format           julianday         median             rtrim         text_join      time_to_milli  */
/*        char_length       fts3_tokenizer                 lag            min       script_code   text_last_index       time_to_nano  */
/*   character_length                 fts5   last_insert_rowid          mkdir              sha1         text_left       time_to_unix  */
/*          charindex      fts5_get_locale          last_value            mod            sha256       text_length         time_trunc  */
/*           coalesce          fts5_locale                lead          .mode            sha384         text_like          time_unix  */
/*             concat       fts5_source_id                left          nlike            sha512        text_lower         time_until  */
/*          concat_ws          fuzzy_caver             leftstr         nlower              sign         text_lpad           timediff  */
/*                cos         fuzzy_damlev              length            now               sin        text_ltrim       to_timestamp  */
/*               cosh       fuzzy_editdist         levenshtein      nth_value              sinh       text_repeat              total  */
/*                cot        fuzzy_hamming                like          ntile           snippet      text_replace      total_changes  */
/*               coth        fuzzy_jarowin          likelihood         nullif           soundex      text_reverse          translate  */
/*              count          fuzzy_leven              likely         nupper        split_part        text_right           translit  */
/*      crypto_blake3        fuzzy_osadist                  ln   octet_length    sqlean_version         text_rpad               trim  */
/*      crypto_decode       fuzzy_phonetic      load_extension        offsets        sqlite_log        text_rtrim              trunc  */
/*      crypto_encode       fuzzy_rsoundex                 log       optimize  sqlite_source_id         text_size             typeof  */
/*         crypto_md5         fuzzy_script               log10   osa_distance    sqlite_version        text_slice           unaccent  */
/*        crypto_sha1        fuzzy_soundex                log2           padc              sqrt        text_split           undefine  */
/*      crypto_sha256       fuzzy_translit               lower           padl            square    text_substring              unhex  */
/*      crypto_sha384      gen_random_uuid      lower_quartile           padr       starts_with        text_title            unicode  */
/*      crypto_sha512                 glob                lpad   percent_rank      stats_median    text_translate    unicode_version  */
/*          cume_dist         group_concat              lsmode     percentile         stats_p25         text_trim          unixepoch  */
/*       current_date              hamming               ltrim  percentile_25         stats_p75        text_upper           unlikely  */
/*       current_time                  hex           make_date  percentile_75         stats_p90              time              upper  */
/*  current_timestamp            highlight      make_timestamp  percentile_90         stats_p95          time_add     upper_quartile  */
/*               date               ifnull               match  percentile_95         stats_p99     time_add_date              uuid4  */
/*           date_add                  iif           matchinfo  percentile_99        stats_perc        time_after              uuid7  */
/*          date_part                instr           math_acos  phonetic_hash      stats_stddev       time_before         uuid_blob   */
/*         date_trunc         jaro_winkler          math_acosh             pi  stats_stddev_pop      time_compare          uuid_str   */
/*           datetime                 json           math_asin            pow stats_stddev_samp         time_date           var_pop   */
/*             decode           json_array          math_asinh          power         stats_var        time_equal          var_samp   */
/*             define    json_array_length           math_atan         printf     stats_var_pop     time_fmt_date          variance   */
/*       define_cache  json_error_position          math_atan2         proper    stats_var_samp time_fmt_datetime         writefile   */
/*       json_extract           math_atanh          quote                                                                  zeroblob   */
/**************************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_ | |_|\__,_|

*/


