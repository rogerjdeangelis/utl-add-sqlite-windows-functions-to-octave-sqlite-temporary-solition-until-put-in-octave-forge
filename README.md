# utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge
add sqlite windows functions to octave sqlite temporary solition until put in octave forge
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











































































































   Storing and retrieving octave objects in sqlite tables for later use by octave sas r python and excel

         CONTENTS

utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge





            1 how to add sqlite window extensions
            2 test window extensions
              SQLite does not natively support median(), stddev(), or variance() functions.
            3 optionall add datatype to existing sqlite table
            4 autocall functions that create sqlite tables from octave datastructures

SOAPBOX ON

 Please don't supply a matlab solution, i need a octave solution.
 I have this octave dbtable

     Id  Name
  __  _____

  1   Name1
  2   Name2
  3   Name3
  4   Name4

  Instead of manually create the following code,
  how can i do it programatically without hardcoding the data?

  T1 = table([1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'});
  T2 = table([3;4],['Name3';'Name4'], 'VariableNames', {'Id','Name'});
  sqlwrite(db, "nut", T1, 'ColumnType', {'numeric', 'text'})
  sqlwrite(db, "nut", T2, 'ColumnType', {'numeric', 'text'})







  This is my understanding of octave, it may not be totally correct.
  Please don't supply a matlab solution, i need a octave solution.

  Saving and loading octave objects using files is not supported in octave?
  Sqlwrite function cannot save a existing octave object into sqlite table.
  Sqlwrite only supports loading stringS that containa all the data

  T1 = table([1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'});
  T2 = table([1;2],['Name3';'Name4'], 'VariableNames', {'Id','Name'});
  sqlwrite(db, "nut", T1, 'ColumnType', {'numeric', 'text'})
  sqlwrite(db, "nut", T2, 'ColumnType', {'numeric', 'text'})

  Saveing strings with imbeeded data is untenable.

  This repository provides functions that save octave objects in sqlite tables.
  This provides for save and retrieving octave object not only between
  octave sessions or batch, but also allow R, Python and excel to
  inteface with octave objects.

  Note is is trivial fo octave to fetch sqlite tables, foe example

  want = fetch(db, 'select * from want');
  disp(want)

  The problem is create sqlite tables from octave objects

  Sqlite does support loading a string into sqlite.







  Sqlite does support loading a string into sqlite.





  Sqlite
  The new functions will allow users to save and restore octave objects using sqlite



add sqlite windows functions to octave sqlite temporary soluition until put in octave forge

Don't use in production yet, should be in forge with next version.

Note from octave support (I worked with octave support, the fix took one day!!!)

From octave support
  Ill add the changes to the repo for the next version of the octave package


If you can't wait here is an Interim install of octave with windows extensions

Open this hyperlink

https://tinyurl.com/mur9jeu8
https://github.com/rogerjdeangelis/utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge

INSTALL PATCHES  TO OCTAVE-SQLITE

   1. Click on  octave-sqlite_das.tgz
   2. Click on download icon |__|
   3. Copy downloader file to d:/zip/octave-sqlite_das.tgz

   4  Open up the OCTAVE CLI (start
        GNU Octave 10.2.0
           GNU-Octave-10.2.0 (CLI)
   5  Paste is on the command line
      pkg install -verbose d:/zip/octave-sqlite_das.tgz

   6  Note this patches the existing package. Inore the unistall error at the end of the install.
      The standard install script loads a completely new vesion and then removes the old one.
      Patching does not replace the current vesion so we get the unistall error at the end of the patch
      Just ignore it
   7  Use octave-sqlite just like before
      You now have support for median(), stddev(), or variance() functions and much more


















Additionally, SQLite does not natively support median(), stddev(), or variance() functions. Here's how to fix it:




                    INPUT                                              PROCESS
                    =====

    MATLAB tablicious table (or o package table)
    Should be able to use with octave matrices)
    Should work with octave dataframes?)

     LOCAL OCTAVE TABLE

     Name     Age  Score
     _______  ___  _____

     Alice    25   88.5
     Bob      30   92
     Charlie  22   79.5
     Diana    28   85
     Eve      35   91.5
     Frank    40   87

     Tabllicious code

     Name={"Alice";"Bob";"Charlie";"Diana";"Eve";"Frank"};
     Age=[25;30;22;28;35;40];
     Score=[88.5;92.0;79.5;85.0;91.5;87.0];
     students = dbtable(Name, Age, Score);
     disp(students)




%utl_mbegin;
parmcards4;
pkg load sqlite
pkg load io
pkg load database

db = sqlite("d:/sqlite/have.db");
execute(db, 'select load_extension("d:/dll/sqlean")');

execute(db,"drop table if exists numbers");

execute(db                                       ...
  ,["  create table numbers (num integer);     " ...
    "  with recursive cnt(x) as (              " ...
    "    select 1                              " ...
    "    union all                             " ...
    "    select x + 1 from cnt where x < 10)   " ...
    "  insert into numbers(num)                " ...
    "  select                                  " ...
    "    median(x)     as median_x             " ...
    "   ,stddev(x)     as stddev_x             " ...
    "   ,max(x)        as max_x                " ...
    "   ,min(x)        as min_x                " ...
    "   ,variance(x)   as var_x                " ...
    "  from                                    " ...
    "    cnt                                   " ...
 ]);

want = fetch(db, 'select * from numbers');
close(db)
;;;;
%utl_mend;


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



   ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...
 " ...

CREATE TABLE numbers (num INTEGER);
execute(db, 'select load_extension("d:/dll/sqlean")')


WITH RECURSIVE cnt(x) AS (
  SELECT 1
  UNION ALL
  SELECT x + 1 FROM cnt WHERE x < 10
)
INSERT INTO numbers(num)
SELECT x FROM cnt;







PROCESS  (functions on end)

/*---- delete the entire sqlite database ----*/
%utlfkill(d:/sqlite/have.db);

%utl_mbegin;
parmcards4;

pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'select load_extension("d:/dll/sqlean")');

Name={"Alice";"Bob";"Charlie";"Diana";"Eve";"Frank"};
Age=[25;30;22;28;35;40];
Score=[88.5;92.0;79.5;85.0;91.5;87.0];
students=dbtable(Name,Age,Score);
disp(students)

##################################################
##  local dbtable students                      ##
##  6x3 table                                   ##
##                                              ##
##  Name     Age  Score                         ##
##  _______  ___  _____                         ##
##                                              ##
##  Alice    25   88.5                          ##
##  Bob      30   92                            ##
##  Charlie  22   79.5                          ##
##  Diana    28   85                            ##
##  Eve      35   91.5                          ##
##  Frank    40   87                            ##
##################################################

execute(db,"drop table if exists want");

sql_create_insert(db,students,"want")

want = fetch(db, 'select * from want');
disp(want)

##################################################
##  sqlite table want                           ##
##                                              ##
##   cid  name   type  notnull  dflt_value  pk  ##
##   ___  _____  ____  _______  __________  __  ##
##                                              ##
##   0    Name   TEXT  0                    0   ##
##   1    Age    REAL  0                    0   ##
##   2    Score  REAL  0                    0   ##
##                                              ##
##  Name     Age  Score                         ##
##  _______  ___  _____                         ##
##                                              ##
##  Alice    25   88.5                          ##
##  Bob      30   92                            ##
##  Charlie  22   79.5                          ##
##  Diana    28   85                            ##
##  Eve      35   91.5                          ##
##  Frank    40   87                            ##
##################################################


execute(db,"drop table if exists stats");

execute(db                                 ...
  ,["  create                            " ...
    "    table stats as                  " ...
    "  select                            " ...
    "    'STATISTICS'  as stats          " ...
    "   ,median(score) as median_score   " ...
    "   ,stddev(score) as stddev_score   " ...
    "   ,max(age)      as max_age        " ...
    "   ,min(age)      as min_age        " ...
    "   ,variance(age) as var_age        " ...
    "  from                              " ...
    "    want                            " ...
 ]);

result=fetch(db, 'select * from stats');
disp(result)

data = fetch(db, "PRAGMA table_info('stats');");
disp(data)

close(db);
;;;;
%utl_mend;

NOTE type is missing sqlite seems to infer
char and real.

The only want to add type is to create

create newstats want( Name TEXT,Age REAL,Score REAL ) select * from stats;


















cid  name          type  notnull  dflt_value  pk
___  ____________  ____  _______  __________  __

0    stats               0                    0
1    median_score        0                    0
2    stddev_score        0                    0
3    max_age             0                    0
4    min_age             0                    0
5    var_age             0                    0


 Name     Age  Score
 _______  ___  _____

 Alice    25   88.5
 Bob      30   92
 Charlie  22   79.5
 Diana    28   85
 Eve      35   91.5
 Frank    40   87








  median_score  stddev_score  max_age  min_age  var_age
  ____________  ____________  _______  _______  _______

  87.75         4.6341        40       22       43.6





%let oto=C:/Program Files/GNU Octave/Octave-10.2.0/mingw64/share/octave/10.2.0/m/miscellaneous;

filename ft15f001 "&oto/sql_create_table.m";
parmcards4;
function sql_create_table(db,inp,quoted_table);

  colnames = inp.Properties.VariableNames;
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));

  sql_make = ["create table ", quoted_table, sql_str];

  disp(sql_make)
  execute(db,sql_make);

end
;;;;
run;quit;

filename ft15f001 "&oto/sql_insert.m";
parmcards4;
function sql_insert(db,inp,out);

   sql_delete = sprintf('DELETE FROM %s;', out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          execute(db, query);
      end
      disp(query);
end
;;;;
run;quit;

filename ft15f001 "&oto/sql_create_insert.m";
parmcards4;
function sql_create_insert(db,dbtbl,sqltbl)

   sql_create_table(db,dbtbl,sqltbl);
   sql_insert      (db,dbtbl,sqltbl);

end;
;;;;
run;quit;
































%let oto=C:/Program Files/GNU Octave/Octave-10.2.0/mingw64/share/octave/10.2.0/m/miscellaneous;

filename ft15f001 "&oto/sql_create_table.m";
parmcards4;
function sql_create_table(db,inp,quoted_table);

  colnames = inp.Properties.VariableNames;
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));

  sql_make = ["create table ", quoted_table, sql_str];

  execute(db,sql_make);

end
;;;;
run;quit;

filename ft15f001 "&oto/sql_insert.m";
parmcards4;
function sql_insert(db,inp,out);

   sql_delete = sprintf('DELETE FROM %s;', out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);

          execute(db, query);
      end
end
;;;;
run;quit;

filename ft15f001 "&oto/sql_create_insert.m";
parmcards4;
function sql_create_insert(db,dbtbl,sqltbl)

   sql_create_table(db,dbtbl,sqltbl);
   sql_insert      (db,dbtbl,sqltbl);

end;
;;;;
run;quit;








































radians
math_log10
 math_log2



       ...
      " ...
      " ...
      " ...
      " ...
      " ...
      " ...
      " ...
      " ...
      " ...










data = fetch(db, "PRAGMA table_info('want');");
disp(data)

want = fetch(db, 'select * from want');
disp(want)

close(db);
;;;;
%utl_mend;









































































/*---- works ----*/
%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'SELECT load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

clear sql_create_table

function sql_create_table(db,inp,quoted_table);

  disp(inp)

  colnames = inp.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)

  sql_make = ["create table ", quoted_table, sql_str];
  disp(sql_make)

  execute(db,sql_make);

end

execute(db,"drop table if exists want")

sql_create_table(db,students,"want");

db = sqlite("d:/sqlite/have.db");
clear dic
dic=fetch(db,'PRAGMA table_info(want);')
disp(dic);
close(db)
;;;;
%utl_mend;


* works;
%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");

clear sql_insert;

function sql_insert(db,inp,out);

   disp(inp);

   sql_delete = sprintf('DELETE FROM %s;', out);
   disp(out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   disp("n_rows")
   disp(n_rows)
   disp("columns")
   disp(columns)

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end
end

clear students;
Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

db = sqlite("d:/sqlite/have.db");
sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;


* combine;

/*---- works ----*/
%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics



db = sqlite("d:/sqlite/have.db");
execute(db, 'SELECT load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

clear sql_create_table

function sql_create_table(db,inp,quoted_table);

  disp(inp)

  colnames = inp.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)

  sql_make = ["create table ", quoted_table, sql_str];
  disp(sql_make)

  execute(db,sql_make);

end

function sql_insert(db,inp,out);

   disp(inp);

   sql_delete = sprintf('DELETE FROM %s;', out);
   disp(out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   disp("n_rows")
   disp(n_rows)
   disp("columns")
   disp(columns)

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end


pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'SELECT load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

clear sql_create_table

end

execute(db,"drop table if exists want")
sql_create_table(db,students,"want");

db = sqlite("d:/sqlite/have.db");
clear dic
dic=fetch(db,'PRAGMA table_info(want);')
disp(dic);

db = sqlite("d:/sqlite/have.db");
sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)

;;;;
%utl_mend;





* combine;

/*---- works ----*/
%utl_mbegin;
parmcards4;

function sql_create_table(db,inp,quoted_table);

  disp(inp)

  colnames = inp.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)

  sql_make = ["create table ", quoted_table, sql_str];
  disp(sql_make)

  execute(db,sql_make);

end

function sql_insert(db,inp,out);

   disp(inp);

   sql_delete = sprintf('DELETE FROM %s;', out);
   disp(out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   disp("n_rows")
   disp(n_rows)
   disp("columns")
   disp(columns)

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end
end

function sql_create_insert(db,dbtbl,sqltbl)

   sql_create_table(db,dbtbl,sqltbl);
   sql_insert      (db,dbtbl,sqltbl);

end;

pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'select load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

execute(db,"drop table want");
data = fetch(db, "PRAGMA table_info('want');");
disp(data)

sql_create_insert(db,students,"want")

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;



run('d:\mat\sql_create_insert.m')







execute(db,"drop table if exists want")

sql_create_insert(db,students,"want")


sql_create_table(db,students,"want");

db = sqlite("d:/sqlite/have.db");
clear dic
dic=fetch(db,'PRAGMA table_info(want);')
disp(dic);

db = sqlite("d:/sqlite/have.db");

sql_insert(db,students,"want");

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)

;;;;
%utl_mend;

%let TO=C:\PROGRA~1\GNUOCT~1\Octave-10.2.0\mingw64\share\octave\10.2.0\m\miscellaneous;

%utl_close;

%let oto=C:/Program Files/GNU Octave/Octave-10.2.0/mingw64/share/octave/10.2.0/m/miscellaneous;
%put &=oto;

attrib -r -h -s "C:\Program Files\GNU Octave\Octave-10.2.0\mingw64\share\octave\10.2.0\m\miscellaneous\*.*" /s /d

%utl_close;


filename ft15f001 "C:/Program Files/GNU Octave/Octave-10.2.0/mingw64/share/octave/10.2.0/m/miscellaneous/sql_create_table.m";



/*---- run this sas code to add the funtions to octave autocall path or manually copy ----*/

%let oto=C:/Program Files/GNU Octave/Octave-10.2.0/mingw64/share/octave/10.2.0/m/miscellaneous;

filename ft15f001 "&oto/sql_create_table.m";
parmcards4;
function sql_create_table(db,inp,quoted_table);

  disp(inp)

  colnames = inp.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = inp.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)

  sql_make = ["create table ", quoted_table, sql_str];
  disp(sql_make)

  execute(db,sql_make);

end
;;;;
run;quit;

filename ft15f001 "&oto/sql_insert.m";
parmcards4;
function sql_insert(db,inp,out);

   disp(inp);

   sql_delete = sprintf('DELETE FROM %s;', out);
   disp(out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   disp("n_rows")
   disp(n_rows)
   disp("columns")
   disp(columns)

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end
end
;;;;
run;quit;

filename ft15f001 "&oto/sql_create_insert.m";
parmcards4;
function sql_create_insert(db,dbtbl,sqltbl)

   sql_create_table(db,dbtbl,sqltbl);
   sql_insert      (db,dbtbl,sqltbl);

end;
;;;;
run;quit;




pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'select load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

execute(db,"drop table want");
data = fetch(db, "PRAGMA table_info('want');");
disp(data)

sql_create_insert(db,students,"want")

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;

source('


run('d:\mat\m\sql_create_insert.m')
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'select load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

execute(db,"drop table want");
data = fetch(db, "PRAGMA table_info('want');");
disp(data)

sql_create_insert(db,students,"want")

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)






































































































































































* works;
%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");

clear sql_insert;

function sql_insert(db,inp,out);

   disp(inp);

   sql_delete = sprintf('DELETE FROM %s;', out);
   disp(out);
   execute(db,sql_delete)

   columns = inp.Properties.VariableNames;
   n_rows  = size(inp, 1);

   disp("n_rows")
   disp(n_rows)
   disp("columns")
   disp(columns)

   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = inp.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end
end

clear students;
Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

db = sqlite("d:/sqlite/have.db");
sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;






































% Save the dbtable
save mytable.mat T

% Later, to load it back into your workspace
load mytable.mat




























  sql = ['DROP TABLE IF EXISTS ', quoted_table, ';'];
  execute(db, sql);

/*---- works ----*/
%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");
execute(db, 'SELECT load_extension("d:/dll/sqlean")');

Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);

disp(students);

function sql_create_table(db,students,quoted_table);

  disp(students)

  colnames = students.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);

  for i = 1:ncols
    colname = colnames{i};
    coldata = students.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REAL";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end

  sql = ['DROP TABLE IF EXISTS ', quoted_table, ';'];
  execute(db, sql);
  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)
  sql_make = ["create table ", quoted_table, sql_str];
  disp(sql_make)
  execute(db,sql_make);

end
sql_create_table(db,students,"want");

db = sqlite("d:/sqlite/have.db");
clear dic
dic=fetch(db,'PRAGMA table_info(want);')
disp(dic);
close(db)
;;;;
%utl_mend;

%utl_mbegin;
parmcards4;
pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics

db = sqlite("d:/sqlite/have.db");

function sql_insert(db,inp,out);
disp(inp)
sql_delete = sprintf('DELETE FROM %s;', out);
disp(out)
execute(db,sql_delete)

addvar=inp;
disp(addvar)

% Extract column names correctly for a table
columns = addvar.Properties.VariableNames;
n_rows  = size(addvar, 1);  % Get number of rows
disp(n_rows)
disp(columns)

% Construct and execute INSERT for each row
   for i = 1:n_rows
       % Get values for the current row
       values = cell(1, length(columns));
       for j = 1:length(columns)
           col_data = addvar.(columns{j});
           if iscell(col_data)
               values{j} = col_data{i};   % Handle text fields
           else
               values{j} = col_data(i);   % Handle numeric fields
           end
       end
       % Format each value appropriately for SQL
       formatted_values = cell(1, length(values));
       for k = 1:length(values)
           if ischar(values{k})
               % Escape single quotes and wrap in SQL quotes
               escaped_str = strrep(values{k}, "'", "''");
               formatted_values{k} = sprintf("'%s'", escaped_str);
           else
               formatted_values{k} = num2str(values{k});  % Convert numbers to strings
           end
       end

       % Build the INSERT query safely
       col_list = strjoin(columns, ', ');
       val_list = strjoin(formatted_values, ', ');
       query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
       % disp(query)

       execute(db, query);
   end
end

sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;


pkg load dataframe
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics
function sql_insert(db,inp,out);
db = sqlite("d:/sqlite/have.db");
sql_delete = sprintf('DELETE FROM %s;', out);
execute(db,sql_delete)
addvar=inp;
% Extract column names correctly for a table
columns = addvar.Properties.VariableNames;
n_rows  = size(addvar, 1);  % Get number of rows

% Construct and execute INSERT for each row
   for i = 1:n_rows
       % Get values for the current row
       values = cell(1, length(columns));
       for j = 1:length(columns)
           col_data = addvar.(columns{j});
           if iscell(col_data)
               values{j} = col_data{i};   % Handle text fields
           else
               values{j} = col_data(i);   % Handle numeric fields
           end
       end
       % Format each value appropriately for SQL
       formatted_values = cell(1, length(values));
       for k = 1:length(values)
           if ischar(values{k})
               % Escape single quotes and wrap in SQL quotes
               escaped_str = strrep(values{k}, "'", "''");
               formatted_values{k} = sprintf("'%s'", escaped_str);
           else
               formatted_values{k} = num2str(values{k});  % Convert numbers to strings
           end
       end

       % Build the INSERT query safely
       col_list = strjoin(columns, ', ');
       val_list = strjoin(formatted_values, ', ');
       query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
       % disp(query)

       execute(db, query);
   end
end



sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)

























pkg load tablicious
pkg load statistics
pkg load dataframe
pkg load database

%utl_mbegin;
parmcards4;
pkg load sqlite
pkg load io

db = sqlite("d:/sqlite/have.db");
execute(db, 'SELECT load_extension("d:/dll/sqlean")');
clear sql_insert

function sql_insert(db,inp,out);
   db = sqlite("d:/sqlite/have.db");
   sql_delete = sprintf('DELETE FROM %s;', out);
   execute(db,sql_delete)
   addvar=inp;
   disp(addvar)
   % Extract column names correctly for a table
   columns = addvar.Properties.VariableNames;
   n_rows  = size(addvar, 1);  % Get number of rows
   disp(n_rows)
   disp(columns)
end
sql_insert(db,students,"want");
;;;;
%utl_mend;
   % Construct and execute INSERT for each row
      for i = 1:n_rows
          % Get values for the current row
          values = cell(1, length(columns));
          for j = 1:length(columns)
              col_data = addvar.(columns{j});
              if iscell(col_data)
                  values{j} = col_data{i};   % Handle text fields
              else
                  values{j} = col_data(i);   % Handle numeric fields
              end
          end
          % Format each value appropriately for SQL
          formatted_values = cell(1, length(values));
          for k = 1:length(values)
              if ischar(values{k})
                  % Escape single quotes and wrap in SQL quotes
                  escaped_str = strrep(values{k}, "'", "''");
                  formatted_values{k} = sprintf("'%s'", escaped_str);
              else
                  formatted_values{k} = num2str(values{k});  % Convert numbers to strings
              end
          end

          % Build the INSERT query safely
          col_list = strjoin(columns, ', ');
          val_list = strjoin(formatted_values, ', ');
          query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
          % disp(query)

          execute(db, query);
      end
end
sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
;;;;
%utl_mend;

* works;
function sql_insert(db,inp,out);
db = sqlite("d:/sqlite/have.db");
sql_delete = sprintf('DELETE FROM %s;', out);
execute(db,sql_delete)
addvar=inp;
% Extract column names correctly for a table
columns = addvar.Properties.VariableNames;
n_rows  = size(addvar, 1);  % Get number of rows

% Construct and execute INSERT for each row
   for i = 1:n_rows
       % Get values for the current row
       values = cell(1, length(columns));
       for j = 1:length(columns)
           col_data = addvar.(columns{j});
           if iscell(col_data)
               values{j} = col_data{i};   % Handle text fields
           else
               values{j} = col_data(i);   % Handle numeric fields
           end
       end
       % Format each value appropriately for SQL
       formatted_values = cell(1, length(values));
       for k = 1:length(values)
           if ischar(values{k})
               % Escape single quotes and wrap in SQL quotes
               escaped_str = strrep(values{k}, "'", "''");
               formatted_values{k} = sprintf("'%s'", escaped_str);
           else
               formatted_values{k} = num2str(values{k});  % Convert numbers to strings
           end
       end

       % Build the INSERT query safely
       col_list = strjoin(columns, ', ');
       val_list = strjoin(formatted_values, ', ');
       query = sprintf('INSERT INTO %s (%s) VALUES (%s)',out, col_list, val_list);
       % disp(query)

       execute(db, query);
   end
end

sql_insert(db,students,"want");
want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)

If

out="want";

how do i create use out instead of want in the following statements using octave

query = sprintf('INSERT INTO want (%s) VALUES (%s)', col_list, val_list);









                                           proc tabulate;var a b;table a(n)*f=5.*b(n)*f=5.;run;

* works;
db = sqlite("d:/sqlite/have.db");
addvar=students;
% Extract column names correctly for a table
columns = addvar.Properties.VariableNames;
n_rows  = size(addvar, 1);  % Get number of rows

% Construct and execute INSERT for each row
for i = 1:n_rows
    % Get values for the current row
    values = cell(1, length(columns));
    for j = 1:length(columns)
        col_data = addvar.(columns{j});
        if iscell(col_data)
            values{j} = col_data{i};   % Handle text fields
        else
            values{j} = col_data(i);   % Handle numeric fields
        end
    end
    disp(col_data)
    % Format each value appropriately for SQL
    formatted_values = cell(1, length(values));
    for k = 1:length(values)
        if ischar(values{k})
            % Escape single quotes and wrap in SQL quotes
            escaped_str = strrep(values{k}, "'", "''");
            formatted_values{k} = sprintf("'%s'", escaped_str);
        else
            formatted_values{k} = num2str(values{k});  % Convert numbers to strings
        end
    end

    % Build the INSERT query safely
    col_list = strjoin(columns, ', ');
    val_list = strjoin(formatted_values, ', ');
    query = sprintf('INSERT INTO want (%s) VALUES (%s)', col_list, val_list);
    disp(query)

    execute(db, query);
end

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)




sql_delete = sprintf('DELETE FROM %s;', out);
execute(db,sql_delete)





























































t = dataframe({"A", 1; "B", 2});  % Example dataframe
t = table([1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'});
t = dbtable([students.Name], 'VariableNames', {'Name'});
t = dbtable([1:6],[students.Name], 'VariableNames', {'Name'});
disp(t)
Test=t;
disp(Test)
class(Test)
# insert table data
execute(db, 'drop table if exists Test');
sqlwrite(db, "Test", Test, 'ColumnType', {'numeric', 'text'});
data = fetch(db, "PRAGMA table_info('Test');");
disp(data)
dbtable_test = fetch(db, 'select * from Test');
disp(dbtable_test)


T = table([1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'});
sqlwrite(db, "T", T, 'ColumnType', {'numeric', 'text'})


t = dbtable([students.Name(1)], 'VariableNames', {'Name'});


t = dataframe({"A", 1; "B", 2});  % Example dataframe


  T = table([1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'});
  sqlwrite(db, "T", T, 'ColumnType', {'numeric', 'text'})




t = [[1;2],['Name1';'Name2'], 'VariableNames', {'Id','Name'}];


Given the following

dbtable students

Name     Age  Score
_______  ___  _____

Alice    25   88.5
Bob      30   92
Charlie  22   79.5
Diana    28   85
Eve      35   91.5
Frank    40   87





You must pass the name manually as a string if you need it.

how can i program a function that drops a sqlite table with one argument , the name of an existing sqlite table, using octave sqlite
how do i quote the name of the matrix using octave as a string when an unquoted matrix was passed as functon argument. do i have to pass the matrix manually quoted.
Does octave have a function similar to substitute function in r.



execute(db, 'drop table if exists pairsql')


% Extract column names correctly for a table
columns = addvar.Properties.VariableNames;
n_rows  = size(addvar, 1);  % Get number of rows

% Construct and execute INSERT for each row
for i = 1:n_rows
    % Get values for the current row
    values = cell(1, length(columns));
    for j = 1:length(columns)
        col_data = addvar.(columns{j});
        if iscell(col_data)
            values{j} = col_data{i};   % Handle text fields
        else
            values{j} = col_data(i);   % Handle numeric fields
        end
    end
    disp(col_data)
    % Format each value appropriately for SQL
    formatted_values = cell(1, length(values));
    for k = 1:length(values)
        if ischar(values{k})
            % Escape single quotes and wrap in SQL quotes
            escaped_str = strrep(values{k}, "'", "''");
            formatted_values{k} = sprintf("'%s'", escaped_str);
        else
            formatted_values{k} = num2str(values{k});  % Convert numbers to strings
        end
    end

    % Build the INSERT query safely
    col_list = strjoin(columns, ', ');
    val_list = strjoin(formatted_values, ', ');
    query = sprintf('INSERT INTO want (%s) VALUES (%s)', col_list, val_list);
    disp(query)

    execute(db, query);
end

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)













how do i quotethe  name of the matrix as a string when an unquoted
matrix was passed as functon argument. do i have to pass the matrix manually quoted.






















/*            _   _                        _                 _
| |_ ___  ___| |_(_)_ __   __ _   _____  _| |_ ___ _ __  ___(_) ___  _ __  ___
| __/ _ \/ __| __| | `_ \ / _` | / _ \ \/ / __/ _ \ `_ \/ __| |/ _ \| `_ \/ __|
| ||  __/\__ \ |_| | | | | (_| ||  __/>  <| ||  __/ | | \__ \ | (_) | | | \__ \
 \__\___||___/\__|_|_| |_|\__, | \___/_/\_\\__\___|_| |_|___/_|\___/|_| |_|___/
                          |___/
*/



ctave:23> db = sqlite("d:/sqlite/have.db");
octave:24> execute(db, 'SELECT load_extension("d:/dll/sqlean")')
octave:25> res=fetch(db,'SELECT median(pair1) FROM pairs');
octave:26> disp(res)
  1x1 table

  median(pair1)
  _____________

  2.5


octave:27> db = sqlite("d:/sqlite/have.db");
octave:28> execute(db, 'SELECT load_extension("d:/dll/sqlean")')
octave:29> res=fetch(db,'SELECT stats_stddev(pair1) FROM pairs');
octave:30> disp(res)
  1x1 table

  stats_stddev(pair1)

%utl_mbegin;
parmcards4;
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
pkg load statistics
db = sqlite("d:/sqlite/have.db",'connect');
execute(db, 'SELECT load_extension("d:/dll/sqlean")');
Name = {"Alice"; "Bob"; "Charlie"; "Diana"; "Eve"; "Frank"};
Age = [25; 30; 22; 28; 35; 40];
Score = [88.5; 92.0; 79.5; 85.0; 91.5; 87.0];
students = dbtable(Name, Age, Score);
disp(students);

execute(db, 'drop table if exists want');
sql=['create table want (Name text, Age double, Score double)'];
execute(db,sql)

% Extract column names correctly for a table
columns = students.Properties.VariableNames;
n_rows  = size(students, 1);  % Get number of rows

% Construct and execute INSERT for each row
for i = 1:n_rows
    % Get values for the current row
    values = cell(1, length(columns));
    for j = 1:length(columns)
        col_data = students.(columns{j});
        if iscell(col_data)
            values{j} = col_data{i};   % Handle text fields
        else
            values{j} = col_data(i);   % Handle numeric fields
        end
    end
    disp(col_data)
    % Format each value appropriately for SQL
    formatted_values = cell(1, length(values));
    for k = 1:length(values)
        if ischar(values{k})
            % Escape single quotes and wrap in SQL quotes
            escaped_str = strrep(values{k}, "'", "''");
            formatted_values{k} = sprintf("'%s'", escaped_str);
        else
            formatted_values{k} = num2str(values{k});  % Convert numbers to strings
        end
    end

    % Build the INSERT query safely
    col_list = strjoin(columns, ', ');
    val_list = strjoin(formatted_values, ', ');
    query = sprintf('INSERT INTO want (%s) VALUES (%s)', col_list, val_list);
    disp(query)

    execute(db, query);
end

want = fetch(db, 'select * from want');
disp(want)

data = fetch(db, "PRAGMA table_info('want');");
disp(data)
close(db)


Why does setting type = "TEXT" in Octave never evaluate to true
  disp(firstval)
  if ischar(firstval) || isstring(firstval)
        type = "TEXT";
    else
        type = "DOUBLE";
    end



sql = create_table_sql_from_dbtable(t, "MyTable");
disp(sql)



for k = 1:numel(students.types)
  disp(students.types(k).name)
end

  disp(students)
  colnames = students.Properties.VariableNames;
  disp(colnames)
  ncols = numel(colnames);
  disp(ncols);
  sqlcols = cell(1, ncols);
  disp(sqlcols);
  for i = 1:ncols
    colname = colnames{i};
    coldata = students.(colname);
    disp(colname);
    disp(coldata);
    firstval = coldata(1);
    disp("FIRSTVAL");
    disp(firstval);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "DOUBLE";
    end
    disp(colname);
    disp(sqltype);
    sqlcols{i} = sprintf('"%s" %s', colname, sqltype);
    disp(sqlcols(i));
  end


  disp(students)
  colnames = students.Properties.VariableNames;
  ncols = numel(colnames);
  sqlcols = cell(1, ncols);
  for i = 1:ncols
    colname = colnames{i};
    coldata = students.(colname);
    firstval = coldata(1);
    if iscell(firstval) && (ischar(firstval{1,1}) || isstring(firstval{1,1}))
        sqltype = "TEXT";
    else
        sqltype = "REALE";
    end
    sqlcols{i} = sprintf('%s %s', colname, sqltype);
  end
  disp(sqlcols);
  tbl="want"
  sql_str = sprintf('( %s )', strjoin(sqlcols, ','));
  disp(sql_str)
  sql_make = ["create table ", tbl, sql_str];
  disp(sql _make);




How do i concatenate these two strings

tbl="want";
typ=( Name TEXT,Age double,Score double )

to give this string

cated="create table tbl( Name TEXT,Age REAL,Score REAL)"


tbl="want";
cated = f"create table {tbl}{typ}"

cated = ["create table ", tbl, sql_str];


given the following in octave

 octave:333> disp(cols);
{
  [1,1] = "name" text
  [1,2] = "age" double
  [1,3] = "score" double
}

how do i create the string using octave

create table text (name text, age real, score real)


% Sample input (based on your disp(cols) output)
cols = {"name text", "age double", "score double"};

% Process each column: split name/type and map types
col_defs = cell(1, numel(cols));
for i = 1:numel(cols)
    parts = strsplit(cols{i});          % Split into words
    col_name = strjoin(parts(1:end-1)); % Handle multi-word names
    col_type = parts{end};              % Last word is the type

    % Map 'double' to 'real'; keep other types as-is
    if strcmpi(col_type, 'double')
        sql_type = 'real';
    else
        sql_type = col_type;
    end

    col_defs{i} = [col_name ' ' sql_type];
end








% Join column definitions and create the SQL string
columns_str = strjoin(col_defs, ', ');
query = ['create table text (', columns_str, ')'];

% Display the result
disp(query);

Given the octave cell array below

tbl="want"

octave:348> disp(cols);
{
  [1,1] = Name TEXT
  [1,2] = Age REAL
  [1,3] = Score REAL
}

How can i create this string

create table tbl( Name TEXT,Age REAL,Score REAL)


tbl="want";
cols = {'Name TEXT', 'Age REAL', 'Score REAL'};

sql_str = sprintf('create table want( %s )', strjoin(sqlcols, ','));
disp(sql_str);


create table tbl( Name TEXT,Age REALE,Score REALE )




sql_str = sprintf('create table want( %s )', strjoin(sqlcols, ','));
disp(sql_str);

tbl="want";
cols = {'Name TEXT', 'Age REAL', 'Score REAL'};

sql_str = sprintf('create table want( %s )', strjoin(sqlcols, ','));
disp(sql_str);



tbl="want"
sql_str = sprintf('create table want( %s )', strjoin(sqlcols, ','));
disp(sql_str);

























    % Infer type: double or text
    t = typeinfo(firstval);  % Returns 'double', 'char', etc.[8]
    if strcmp(t, "double")
      sqltype = "DOUBLE";
    elseif ischar(firstval) || isstring(firstval)
      sqltype = "TEXT";
    else
      error("Unsupported data type in column %s: %s", colname, t);
    end
    % Quote column name for SQL safety
    sqlcols{i} = sprintf('"%s" %s', colname, sqltype);
  end;




    if ischar(firstval) || isstring(firstval)













































% load students into sqlite;
execute(db, 'drop table if exists want');
sql=['create table if not exists want (keyx double, id double, name text, id_squared double, beta double)'];


execute(db                        ...
 ,["  create
   "     table want as
   "  (
   "    Name text
   "    ,Age real
   "    ,Score as f2_a
   "    ,f1.b  as f1_b
   "    ,f2.b  as f2_b
   "    ,f1.c  as f1_c
   "    ,f2.c  as f2_c
   "  from
   "     have as f1, have as f2
   "  on
   "    f1.pfx = 'F1' and
   "    f2.pfx = 'F2' and
   "    f1.id  = f2.id
 ]);

execute(db                        ...
 ,["  create
   "     table want as
   "  select
   "    f1.id
   "    ,f1.a  as f1_a
   "    ,f2.a  as f2_a
   "    ,f1.b  as f1_b
   "    ,f2.b  as f2_b
   "    ,f1.c  as f1_c
   "    ,f2.c  as f2_c
   "  from
   "     have as f1, have as f2
   "  on
   "    f1.pfx = 'F1' and
   "    f2.pfx = 'F2' and
   "    f1.id  = f2.id
 ]);




" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...
" ...











fetch(db,'SELECT * FROM text');
chk=fetch(db,'SELECT median(age) as median_age, stats_stddev((score) as stdev_score FROM age');
disp(chk);
clase(db)
;;;;
%utl_mend;

execute(db                      ...
 ,["  create                  " ...
   "    table pairsql as      " ...
   "  select                  " ...
   "    vec1.vec as pair1     " ...
   "   ,vec2.vec as pair2     " ...
   "  from                    " ...
   "    vec1 inner join vec2  " ...
   "  on                      " ...
   "    1=1                   " ...
]);


execute(db, 'CREATE TABLE IF NOT EXISTS text (Name TEXT, Age real, Score REAL)');
















      ;;;;%end;%mend;/*'*/ *);*};*];*/;/*"*/;run;quit;%end;end;run;endcomp;%utlfix;

          run;quit;







class = sqlite("d:/sqlite/have.db");
execute(db, 'drop table if exists pairsql')
 sqlwrite(db
    ,"class"
    ,class
    ,'ColumnType'
    ,{'text, 'numeric', 'numeric'});









url <- "https://raw.githubusercontent.com/username/repository/main/data/example_data.gz"

# Define the destination path
destfile <- "example_data.gz"

# Download the file
download.file(url, destfile, mode = "wb")

utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge


# Define the raw file URL
url <- "https://raw.githubusercontent.com/username/repository/main/data/example_data.gz"

# Define the destination path
destfile <- "example_data.gz"

# Download the file
download.file(url, destfile, mode = "wb")



https://tinyurl.com/mu3anctv
https://github.com/rogerjdeangelis/utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge/blob/main/octave-sqlite_das.tgz



options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;

proc datasets lib=sd1 nolist nodetails;
 delete want;
run;quit;

%utl_rbeginx;
parmcards4;
destfile <- "c:/temp/octave-sqlite_das.tgz"
url <- "https://github.com/rogerjdeangelis/utl-add-sqlite-windows-functions-to-octave-sqlite-temporary-solition-until-put-in-octave-forge/blob/main/octave-sqlite_das.tgz"
download.file(url, destfile, mode = "wb")
;;;;
%utl_rendx;



# Define the destination path
destfile <- "example_data.gz"

# Download the file
download.file(url, destfile, mode = "wb")



library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
options(sqldf.dll = "d:/dll/sqlean.dll")
have<-read_sas("d:/sd1/have.sas7bdat")
print(have)
want<-sqldf('
')
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

proc print data=sd1.want;
run;quit;















































github
https://tinyurl.com/59n8athe
https://github.com/rogerjdeangelis/utl-matlab-combine-every-two-rows-ito-one-and-and-add-a-prefix-to-duplicate-column-names

stackoverflow matlab
https://tinyurl.com/982vjmyc
https://stackoverflow.com/questions/79396087/trying-to-reshape-rearrange-table-variables-in-matlab

        SOLUTION ( suspect Art's transpose macro can do this with a one liner)

              1 sas transpose macro (one liner)
              2 sas sql
              3 sas sql arrays
              4 matab sql
                also works in r, python and excel
                see https://tinyurl.com/4e6yaap8
                most of run time is loading the packageg
              5 see stackoverflow for base octave solution

PROBLEM: sql self join on have where PFX='F!' for left table and pfx='F2' for righ table

          INPUT                      OUTPUT

     ID  PFX  A  B  C     ID F1_A F2_A F1_B F2_B F1_C F2_C

     12  F1   1  3  5     12   1    2    3    4    5    6
     12  F2   2  4  6


/**************************************************************************************************************************/
/*          INPUT                 |        PROCESS                             |       OUTPUT                             */
/*          =====                 |        =======                             |       ======                             */
/* SAS SD!.HAVE                   | 1 SAS TRANSPOSE MACRO (one liner)          | WORK.WANT                                */
/* ============                   | =================================          |                                          */
/*                                |                                            |                                          */
/* ID  PFX  A  B  C               | %utl_transpose(                            |     F1  F1  F1  F2  F2  F2               */
/*                                |       data=sd1.have                        | ID   A   B   C   A   B   C               */
/* 12  F1   1  3  5               |      ,out=want                             |                                          */
/* 12  F2   2  4  6               |      ,by=id                                | 12   1   3   5   2   4   6               */
/*                                |      ,id=pfx                               | 13   3   5   7   4   6   8               */
/*                                |      ,var_first=NO                         |                                          */
/* SQLITE TABLE MATLAB INPUT      |      ,delimiter=_                          |                                          */
/* =========================      |      ,var=a b c                            |                                          */
/*                                |      );                                    |                                          */
/* pragma_table_info('have')      |                                            |                                          */
/* contents                       |--------------------------------------------|------------------------------------------*/
/*              not               | 2 SAS SQL                                  |                                          */
/* id name type null dflt pk      | =========                                  | WORK.WANT (SAME OUTPUT DIFFERENT ORDER)  */
/*                                |                                            |                                          */
/*  0   ID REAL    0  NA  0       | proc sql;                                  |      F1  F2   F1  F2   F1  F2            */
/*  1  PFX TEXT    0  NA  0       |   create                                   | ID    A   A    B   B    C   C            */
/*  2    A REAL    0  NA  0       |      table want as                         |                                          */
/*  3    B REAL    0  NA  0       |   select                                   | 12    1   2    3   4    5   6            */
/*  4    C REAL    0  NA  0       |     f1.id                                  | 13    3   4    5   6    7   8            */
/*                                |     ,f1.a  as f1_a                         |                                          */
/* SQLITE TABLE                   |     ,f2.a  as f2_a                         |                                          */
/*                                |     ,f1.b  as f1_b                         |                                          */
/* ID PFX  A B C                  |     ,f2.b  as f2_b                         |                                          */
/*                                |     ,f1.c  as f1_c                         |                                          */
/* 12 F1   1 3 5                  |     ,f2.c  as f2_c                         |                                          */
/* 12 F2   2 4 6                  |   from                                     |                                          */
/* 13 F1   3 5 7                  |     sd1.have as f1, sd1.have as f2         |                                          */
/* 13 F2   4 6 8                  |   where                                    |                                          */
/*                                |     f1.pfx = 'F1' and                      |                                          */
/*                                |     f2.pfx = 'F2' and                      |                                          */
/*                                |     f1.id  = f2.id                         |                                          */
/* options                        | ;quit;                                     |                                          */
/*  validvarname=upcase;          |                                            |                                          */
/* libname sd1 "d:/sd1";          |--------------------------------------------|------------------------------------------*/
/* data sd1.have;                 | 3 SAS SQL ARRAYS                           | WORK.WANT                                */
/* input id pfx$ a b c;           | ================                           |                                          */
/* cards4;                        |                                            |      F1  F2   F1  F2   F1  F2            */
/* 12 F1 1 3 5                    | %array(_ltr,values=a b c);                 | ID    A   A    B   B    C   C            */
/* 12 F2 2 4 6                    |                                            |                                          */
/* 13 F1 3 5 7                    | proc sql;                                  | 12    1   2    3   4    5   6            */
/* 13 F2 4 6 8                    |   create                                   | 13    3   4    5   6    7   8            */
/* ;;;;                           |      table want as                         |                                          */
/* run;quit;                      |   select                                   |                                          */
/*                                |     f1.id                                  |                                          */
/*                                |     %do_over(_ltr,phrase=%str(             |                                          */
/*                                |     ,f1.?  as f1_?                         |                                          */
/* %utlfkil(d:/sqlite/have.db);   |     ,f2.?  as f2_?))                       |                                          */
/*                                |   from                                     |                                          */
/* %utl_rbeginx;                  |     sd1.have as f1, sd1.have as f2         |                                          */
/* parmcards4;                    |   where                                    |                                          */
/* library(haven)                 |     f1.pfx = 'F1' and                      |                                          */
/* library(DBI)                   |     f2.pfx = 'F2' and                      |                                          */
/* library(RSQLite)               |     f1.id  = f2.id                         |                                          */
/* have<-read_sas(                | ;quit;                                     |                                          */
/*  "d:/sd1/have.sas7bdat")       |                                            |                                          */
/* have                           |                                            |                                          */
/* con <- dbConnect(              |--------------------------------------------|------------------------------------------*/
/*     RSQLite::SQLite()          | 4 MATAB SQL                                | SQLITE WANT TABLE                        */
/*    ,"d:/sqlite/have.db")       | ===========                                |                  not                     */
/* dbWriteTable(                  |                                            | cid  name  type  null dflt pk            */
/*     con                        | %utl_mbegin;                               | ___  ____  ____  ____ ___  __            */
/*   ,"have"                      | parmcards4;                                |                                          */
/*   ,have)                       | pkg load database                          | 0    ID    REAL   0        0             */
/* dbListTables(con)              | pkg load sqlite                            | 1    f1_a  REAL   0        0             */
/* dbGetQuery(                    | pkg load io                                | 2    f2_a  REAL   0        0             */
/*    con                         | pkg load tablicious                        | 3    f1_b  REAL   0        0             */
/*  ,"SELECT                      | db = sqlite("d:/sqlite/have.db");          | 4    f2_b  REAL   0        0             */
/*      *                         | execute(db,'drop table if exists want')    | 5    f1_c  REAL   0        0             */
/*    FROM                        | execute(db                        ...      | 6    f2_c  REAL   0        0             */
/*      have")                    |  ,["  create                    " ...      |                                          */
/* dbGetQuery(con                 |    "     table want as          " ...      | SAS SD1.WANT                             */
/*  ,"SELECT                      |    "  select                    " ...      |                                          */
/*     *                          |    "    f1.id                   " ...      |      F1  F2   F1  F2   F1  F2            */
/*   FROM                         |    "    ,f1.a  as f1_a          " ...      | ID    A   A    B   B    C   C            */
/*    pragma_table_info('have')") |    "    ,f2.a  as f2_a          " ...      |                                          */
/* dbDisconnect(con)              |    "    ,f1.b  as f1_b          " ...      | 12    1   2    3   4    5   6            */
/* ;;;;                           |    "    ,f2.b  as f2_b          " ...      | 13    3   4    5   6    7   8            */
/* %utl_rendx;                    |    "    ,f1.c  as f1_c          " ...      |                                          */
/*                                |    "    ,f2.c  as f2_c          " ...      |                                          */
/* proc report nowd data=want;    |    "  from                      " ...      |                                          */
/* run;quit;                      |    "     have as f1, have as f2 " ...      |                                          */
/*                                |    "  on                        " ...      |                                          */
/*                                |    "    f1.pfx = 'F1' and       " ...      |                                          */
/*                                |    "    f2.pfx = 'F2' and       " ...      |                                          */
/*                                |    "    f1.id  = f2.id          " ...      |                                          */
/*                                |  ]);                                       |                                          */
/*                                | % check sqlite result                      |                                          */
/*                                | dic=fetch(db,"PRAGMA table_info('want');") |                                          */
/*                                | chk=fetch(db,"select * from want")         |                                          */
/*                                | close(db)                                  |                                          */
/*                                | ;;;;                                       |                                          */
/*                                | %utl_mend;                                 |                                          */
/*                                |                                            |                                          */
/*                                |                                            |                                          */
/*                                | BACK TO SAS                                |                                          */
/*                                |                                            |                                          */
/*                                | %utl_rbeginx;                              |                                          */
/*                                | parmcards4;                                |                                          */
/*                                | library(haven)                             |                                          */
/*                                | library(DBI)                               |                                          */
/*                                | library(RSQLite)                           |                                          */
/*                                | library(sqldf)                             |                                          */
/*                                |                                            |                                          */
/*                                | source("c:/oto/fn_tosas9x.R")              |                                          */
/*                                | con <- dbConnect(                          |                                          */
/*                                |     RSQLite::SQLite()                      |                                          */
/*                                |    ,"d:/sqlite/have.db")                   |                                          */
/*                                | dbListTables(con)                          |                                          */
/*                                | df <- dbReadTable(con, "want")             |                                          */
/*                                | df                                         |                                          */
/*                                | fn_tosas9x(                                |                                          */
/*                                |       inp    = df                          |                                          */
/*                                |      ,outlib ="d:/sd1/"                    |                                          */
/*                                |      ,outdsn ="want"                       |                                          */
/*                                |      )                                     |                                          */
/*                                | ;;;;                                       |                                          */
/*                                | %utl_rendx;                                |                                          */
/*                                |                                            |                                          */
/*                                | libname sd1 "d:/sd1";                      |                                          */
/*                                | proc print data=sd1.want;                  |                                          */
/*                                | run;quit;                                  |                                          */
/**************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

options
 validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
input id pfx$ a b c;
cards4;
12 F1 1 3 5
12 F2 2 4 6
13 F1 3 5 7
13 F2 4 6 8
;;;;
run;quit;


%utlfkil(d:/sqlite/have.db);

%utl_rbeginx;
parmcards4;
library(haven)
library(DBI)
library(RSQLite)
have<-read_sas(
 "d:/sd1/have.sas7bdat")
have
con <- dbConnect(
    RSQLite::SQLite()
   ,"d:/sqlite/have.db")
dbWriteTable(
    con
  ,"have"
  ,have)
dbListTables(con)
dbGetQuery(
   con
 ,"SELECT
     *
   FROM
     have")
dbGetQuery(con
 ,"SELECT
    *
  FROM
   pragma_table_info('have')")
dbDisconnect(con)
;;;;
%utl_rendx;

proc report nowd data=want;
run;quit;


/**************************************************************************************************************************/
/* SAS SD!.HAVE                                                                                                           */
/* ============                                                                                                           */
/*                                                                                                                        */
/* ID  PFX  A  B  C                                                                                                       */
/*                                                                                                                        */
/* 12  F1   1  3  5                                                                                                       */
/* 12  F2   2  4  6                                                                                                       */
/*                                                                                                                        */
/*                                                                                                                        */
/* FOR MATLAB                                                                                                             */
/* SQLITE TABLE MATLAB INPUT                                                                                              */
/* =========================                                                                                              */
/*                                                                                                                        */
/* pragma_table_info('have')                                                                                              */
/* contents                                                                                                               */
/*              not                                                                                                       */
/* id name type null dflt pk                                                                                              */
/*                                                                                                                        */
/*  0   ID REAL    0  NA  0                                                                                               */
/*  1  PFX TEXT    0  NA  0                                                                                               */
/*  2    A REAL    0  NA  0                                                                                               */
/*  3    B REAL    0  NA  0                                                                                               */
/*  4    C REAL    0  NA  0                                                                                               */
/*                                                                                                                        */
/* SQLITE TABLE                                                                                                           */
/*                                                                                                                        */
/* ID PFX  A B C                                                                                                          */
/*                                                                                                                        */
/* 12 F1   1 3 5                                                                                                          */
/* 12 F2   2 4 6                                                                                                          */
/* 13 F1   3 5 7                                                                                                          */
/* 13 F2   4 6 8                                                                                                          */
/**************************************************************************************************************************/

/*                   _
/ |  ___  __ _ ___  | |_ _ __ __ _ _ __  ___ _ __   ___  ___  ___  _ __ ___   __ _  ___ _ __ ___
| | / __|/ _` / __| | __| `__/ _` | `_ \/ __| `_ \ / _ \/ __|/ _ \| `_ ` _ \ / _` |/ __| `__/ _ \
| | \__ \ (_| \__ \ | |_| | | (_| | | | \__ \ |_) | (_) \__ \  __/| | | | | | (_| | (__| | | (_) |
|_| |___/\__,_|___/  \__|_|  \__,_|_| |_|___/ .__/ \___/|___/\___||_| |_| |_|\__,_|\___|_|  \___/

*/

%utl_transpose(
      data=sd1.have
     ,out=want
     ,by=id
     ,id=pfx
     ,var_first=NO
     ,delimiter=_
     ,var=a b c
     );

/**************************************************************************************************************************/
/* WORK.WANT total obs=2                                                                                                  */
/*                                                                                                                        */
/* ID    F1_A    F1_B    F1_C    F2_A    F2_B    F2_C                                                                     */
/*                                                                                                                        */
/* 12      1       3       5       2       4       6                                                                      */
/* 13      3       5       7       4       6       8                                                                      */
/**************************************************************************************************************************/

/*___                              _
|___ \   ___  __ _ ___   ___  __ _| |
  __) | / __|/ _` / __| / __|/ _` | |
 / __/  \__ \ (_| \__ \ \__ \ (_| | |
|_____| |___/\__,_|___/ |___/\__, |_|
                                |_|
*/

proc sql;
  create
     table want as
  select
    f1.id
    ,f1.a  as f1_a
    ,f2.a  as f2_a
    ,f1.b  as f1_b
    ,f2.b  as f2_b
    ,f1.c  as f1_c
    ,f2.c  as f2_c
  from
    sd1.have as f1, sd1.have as f2
  where
    f1.pfx = 'F1' and
    f2.pfx = 'F2' and
    f1.id  = f2.id
;quit;

/**************************************************************************************************************************/
/* WORK.WANT total obs=2                                                                                                  */
/*                                                                                                                        */
/*  ID    F1_A    F2_A    F1_B    F2_B    F1_C    F2_C                                                                    */
/*                                                                                                                        */
/*  12      1       2       3       4       5       6                                                                     */
/*  13      3       4       5       6       7       8                                                                     */
/**************************************************************************************************************************/

/*____                             _
|___ /   ___  __ _ ___   ___  __ _| |   __ _ _ __ _ __ __ _ _   _ ___
  |_ \  / __|/ _` / __| / __|/ _` | |  / _` | `__| `__/ _` | | | / __|
 ___) | \__ \ (_| \__ \ \__ \ (_| | | | (_| | |  | | | (_| | |_| \__ \
|____/  |___/\__,_|___/ |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |___/
                                |_|                         |___/
If you have more columns. for instance a-z you can use sql arrays
*/

/*--- this is in my autoexec so you don not need this assignment ----*/

%let letters=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z;

%array(_ltr,values=&letters);

%put &=_ltrn;  /*--- _LTRN=26  array size                        ----*/

%put &=_ltr1;  /*--- _LTR1  = A                                  ----*/
%put &=_ltr26; /*--- _LTR26 = Z                                  ----*/

/*--- I am going to set _ltrn=3 because we only have 3columns    ----*/
%let _ltrn=3;

proc sql;
  create
     table want as
  select
    f1.id
    %do_over(_ltr,phrase=%str(
    ,f1.?  as f1_?
    ,f2.?  as f2_?))
  from
    sd1.have as f1, sd1.have as f2
  where
    f1.pfx = 'F1' and
    f2.pfx = 'F2' and
    f1.id  = f2.id
;quit;

/*--- if you want he generated code turn on mprint or do this    ----*/

data _null_;
   put "%do_over(_ltr,phrase=%str(
          ,f1.?  as f1_?
          ,f2.?  as f2_?))";
run;quit;

,f1.A as f1_A ,f2.A as f2_A ,f1.B as f1_B ,f2.B as f2_B ,f1.C as f1_C ,f2.C as f2_C

/**************************************************************************************************************************/
/* WORK.WANT total obs=2                                                                                                  */
/*                                                                                                                        */
/*  ID    F1_A    F2_A    F1_B    F2_B    F1_C    F2_C                                                                    */
/*                                                                                                                        */
/*  12      1       2       3       4       5       6                                                                     */
/*  13      3       4       5       6       7       8                                                                     */
/*                                                                                                                        */
/* IF you want rge code                                                                                                   */
/*                                                                                                                        */
/* data _null_;                                                                                                           */
/*    put "%do_over(_ltr,phrase=%str(                                                                                     */
/*           ,f1.?  as f1_?                                                                                               */
/*           ,f2.?  as f2_?))";                                                                                           */
/* run;quit;                                                                                                              */
/*                                                                                                                        */
/* ,f1.A as f1_A ,f2.A as f2_A ,f1.B as f1_B ,f2.B as f2_B ,f1.C as f1_C ,f2.C as f2_C                                    */
/**************************************************************************************************************************/

/*  _                     _   _       _                 _
| || |    _ __ ___   __ _| |_| | __ _| |__    ___  __ _| |
| || |_  | `_ ` _ \ / _` | __| |/ _` | `_ \  / __|/ _` | |
|__   _| | | | | | | (_| | |_| | (_| | |_) | \__ \ (_| | |
   |_|   |_| |_| |_|\__,_|\__|_|\__,_|_.__/  |___/\__, |_|
                                                     |_|
*/

%utl_mbegin;
parmcards4;
pkg load database
pkg load sqlite
pkg load io
pkg load tablicious
db = sqlite("d:/sqlite/have.db");
execute(db,'drop table if exists want')
execute(db                        ...
 ,["  create                    " ...
   "     table want as          " ...
   "  select                    " ...
   "    f1.id                   " ...
   "    ,f1.a  as f1_a          " ...
   "    ,f2.a  as f2_a          " ...
   "    ,f1.b  as f1_b          " ...
   "    ,f2.b  as f2_b          " ...
   "    ,f1.c  as f1_c          " ...
   "    ,f2.c  as f2_c          " ...
   "  from                      " ...
   "     have as f1, have as f2 " ...
   "  on                        " ...
   "    f1.pfx = 'F1' and       " ...
   "    f2.pfx = 'F2' and       " ...
   "    f1.id  = f2.id          " ...
 ]);
% check sqlite result
dic=fetch(db,"PRAGMA table_info('want');")
chk=fetch(db,"select * from want")
close(db)
;;;;
%utl_mend;


BACK TO SAS

%utl_rbeginx;
parmcards4;
library(haven)
library(DBI)
library(RSQLite)
library(sqldf)

source("c:/oto/fn_tosas9x.R")
con <- dbConnect(
    RSQLite::SQLite()
   ,"d:/sqlite/have.db")
dbListTables(con)
df <- dbReadTable(con, "want")
df
fn_tosas9x(
      inp    = df
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

libname sd1 "d:/sd1";
proc print data=sd1.want;
run;quit;

/**************************************************************************************************************************/
/*  SQLITE WANT TABLE                                                                                                     */
/*                   not                                                                                                  */
/*  cid  name  type  null dflt pk                                                                                         */
/*  ___  ____  ____  ____ ___  __                                                                                         */
/*                                                                                                                        */
/*  0    ID    REAL   0        0                                                                                          */
/*  1    f1_a  REAL   0        0                                                                                          */
/*  2    f2_a  REAL   0        0                                                                                          */
/*  3    f1_b  REAL   0        0                                                                                          */
/*  4    f2_b  REAL   0        0                                                                                          */
/*  5    f1_c  REAL   0        0                                                                                          */
/*  6    f2_c  REAL   0        0                                                                                          */
/*                                                                                                                        */
/*  SAS SD1.WANT                                                                                                          */
/*                                                                                                                        */
/*       F1  F2   F1  F2   F1  F2                                                                                         */
/*  ID    A   A    B   B    C   C                                                                                         */
/*                                                                                                                        */
/*  12    1   2    3   4    5   6                                                                                         */
/*  13    3   4    5   6    7   8                                                                                         */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

########################################################################
##
## Copyright (C) 2019-2025 The Octave Project Developers
##
## See the file COPYRIGHT.md in the top-level directory of this
## distribution or <https://octave.org/copyright/>.
##
## This file is part of Octave.
##
## Octave is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## Octave is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <https://www.gnu.org/licenses/>.
##
########################################################################

## -*- texinfo -*-
## @deftypefn {} {} mustBeNumeric (@var{x})
##
## Require that input @var{x} is numeric.
##
## Raise an error if the input @var{x} is not numeric, as determined by
## @code{isnumeric (@var{x})}.
##
## @seealso{mustBeNumericOrLogical, isnumeric}
## @end deftypefn

function mustBeNumeric (x)

  if (nargin < 1)
    print_usage ();
  endif

  if (! isnumeric (x))
    label = inputname (1);
    if (isempty (label))
      label = "input";
    endif
    error ("%s must be numeric; found a %s", label, class (x));
  endif

endfunction


%!test
%! mustBeNumeric ([]);
%! mustBeNumeric (42);
%! mustBeNumeric (int32 (42));
%! mustBeNumeric (NaN);

%!error <Invalid call> mustBeNumeric ()
%!error <found a char> mustBeNumeric ("foo")
%!error <found a logical> mustBeNumeric (true)
%!error <found a struct> mustBeNumeric (struct ())
%!error <found a cell> mustBeNumeric (cell ())
