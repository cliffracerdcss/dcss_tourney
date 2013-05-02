import datetime

CDO = 'http://crawl.develz.org/'
CAO = 'http://crawl.akrasiac.org/'
CSZO = 'http://dobrazupa.org/'

USE_TEST = False

TEST_YEAR = USE_TEST and '2013'
TEST_VERSION = USE_TEST and '0.12'
TEST_START_TIME = USE_TEST and (TEST_YEAR + '0401')
TEST_END_TIME   = USE_TEST and (TEST_YEAR + '0501')
TEST_CLAN_DEADLINE = (USE_TEST and
                     datetime.datetime(2012, 04, 15, 0)) # April 15, 00:00
TEST_HARE_START_TIME = USE_TEST and (TEST_YEAR + '0431')
TEST_LOGS = USE_TEST and [
         ('cao-logfile-0.12', CAO + 'logfile12'),
         ('cdo-logfile-0.12', CDO + 'allgames-0.12.txt'),
         ('cszo-logfile-0.12', CSZO + 'meta/0.12/logfile')]
TEST_MILESTONES = USE_TEST and [
         ('cao-milestones-0.12', CAO + 'milestones12'),
         ('cdo-milestones-0.12', CDO + 'milestones-0.12.txt'),
         ('cszo-milestones-0.12', CSZO + 'meta/0.12/milestones')]