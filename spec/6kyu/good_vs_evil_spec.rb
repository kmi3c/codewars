require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :GoodVsEvil do
  let(:tie) { ['Battle Result: ', RESULTS[0]].join }
  let(:good) { ['Battle Result: ', RESULTS[1]].join }
  let(:evil) { ['Battle Result: ', RESULTS[2]].join }

  context 'Basic Tests' do
    it { expect(good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq good }
    it { expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq good }
    it { expect(good_vs_evil('1 1 1 1 1 1', '1 0 1 1 1 1 1')).to eq tie }
    it { expect(good_vs_evil('0 0 0 1 0 0', '0 0 0 0 1 0 0')).to eq tie }
    it { expect(good_vs_evil('1 1 1 1 1 1', '1 1 1 1 1 1 1')).to eq evil }
  end

  context 'Kata Tests' do
    it { expect(good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 0 0 0 0 0', '0 0 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('1 1 1 1 1 1', '1 0 1 1 1 1 1')).to eq tie }
    it { expect(good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 1 0 0 0 0', '0 1 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 1 0 0 0 0', '0 0 1 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 1 0 0 0 0', '0 0 0 1 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 0 1 0 0 0', '0 0 0 0 1 0 0')).to eq tie }
    it { expect(good_vs_evil('0 0 0 1 0 0', '0 0 0 0 1 0 0')).to eq tie }
    it { expect(good_vs_evil('1 0 0 0 1 0', '0 0 0 0 0 1 0')).to eq tie }
    it { expect(good_vs_evil('0 0 1 1 1 0', '0 0 0 0 0 0 1')).to eq tie }
    it { expect(good_vs_evil('0 0 0 0 0 1', '0 0 0 1 1 1 0')).to eq tie }
    it { expect(good_vs_evil('0 0 0 0 0 1', '0 0 0 0 0 0 1')).to eq tie }

    it { expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq good }
    it { expect(good_vs_evil('1 1 1 1 1 1', '0 0 1 1 1 1 1')).to eq good }
    it { expect(good_vs_evil('0 1 0 0 0 0', '1 0 0 0 0 0 0')).to eq good }
    it { expect(good_vs_evil('0 0 1 0 0 0', '0 1 0 0 0 0 0')).to eq good }
    it { expect(good_vs_evil('707 423 584 293 572 62', '136 864 0 626 15 152 121')).to eq good }
    it { expect(good_vs_evil('132 196 432 622 929 373', '761 683 48 801 805 463 176')).to eq good }
    it { expect(good_vs_evil('841 86 823 3 858 502', '718 109 804 691 219 656 216')).to eq good }
    it { expect(good_vs_evil('61 97 756 931 781 673', '649 500 327 157 554 321 270')).to eq good }
    it { expect(good_vs_evil('655 660 28 389 867 999', '99 129 77 98 467 954 305')).to eq good }
    it { expect(good_vs_evil('575 462 540 787 858 493', '460 525 536 768 102 922 14')).to eq good }
    it { expect(good_vs_evil('706 233 377 493 931 648', '923 974 986 120 60 636 3')).to eq good }
    it { expect(good_vs_evil('827 546 130 48 261 981', '73 456 119 423 421 595 37')).to eq good }
    it { expect(good_vs_evil('24 717 118 968 709 941', '516 536 660 913 277 462 509')).to eq good }
    it { expect(good_vs_evil('325 96 250 449 660 718', '316 283 792 2 688 305 85')).to eq good }
    it { expect(good_vs_evil('38 815 49 777 934 709', '200 364 212 641 717 960 94')).to eq good }
    it { expect(good_vs_evil('605 136 586 803 406 776', '582 619 564 592 773 14 333')).to eq good }
    it { expect(good_vs_evil('665 454 666 730 429 907', '523 845 894 428 716 341 102')).to eq good }
    it { expect(good_vs_evil('937 54 87 280 462 775', '45 468 372 25 581 276 581')).to eq good }
    it { expect(good_vs_evil('155 215 341 874 416 897', '885 386 192 488 854 441 378')).to eq good }
    it { expect(good_vs_evil('896 969 240 707 852 885', '423 526 213 895 693 794 380')).to eq good }
    it { expect(good_vs_evil('307 1000 358 310 688 350', '185 871 633 170 104 324 482')).to eq good }
    it { expect(good_vs_evil('276 660 863 28 544 687', '60 411 806 160 396 724 365')).to eq good }
    it { expect(good_vs_evil('505 860 233 392 660 240', '465 28 285 498 984 110 278')).to eq good }
    it { expect(good_vs_evil('754 825 310 861 366 615', '573 923 721 216 522 623 262')).to eq good }
    it { expect(good_vs_evil('441 856 420 152 146 622', '823 86 367 77 464 304 551')).to eq good }
    it { expect(good_vs_evil('884 250 104 512 441 747', '208 14 222 970 497 134 138')).to eq good }
    it { expect(good_vs_evil('620 863 595 801 861 716', '962 706 495 88 44 753 218')).to eq good }
    it { expect(good_vs_evil('853 943 449 444 368 332', '60 402 100 478 530 97 340')).to eq good }
    it { expect(good_vs_evil('821 244 923 849 972 329', '83 2 831 411 132 476 70')).to eq good }
    it { expect(good_vs_evil('486 236 180 985 709 892', '545 554 251 254 938 156 471')).to eq good }
    it { expect(good_vs_evil('685 577 260 665 154 725', '141 773 502 577 852 547 263')).to eq good }
    it { expect(good_vs_evil('769 169 704 209 435 825', '567 386 18 935 695 190 626')).to eq good }
    it { expect(good_vs_evil('340 814 721 365 983 881', '64 10 655 347 366 316 666')).to eq good }
    it { expect(good_vs_evil('375 676 608 625 891 983', '526 657 379 225 160 907 100')).to eq good }
    it { expect(good_vs_evil('298 692 751 272 135 829', '522 746 527 326 39 206 216')).to eq good }
    it { expect(good_vs_evil('976 970 129 762 771 304', '876 337 406 414 219 396 9')).to eq good }
    it { expect(good_vs_evil('80 343 188 238 615 957', '255 126 109 530 944 405 170')).to eq good }
    it { expect(good_vs_evil('644 53 783 544 580 948', '766 42 186 56 66 14 517')).to eq good }
    it { expect(good_vs_evil('978 917 688 570 423 335', '90 772 433 724 420 130 193')).to eq good }
    it { expect(good_vs_evil('114 155 963 978 58 566', '50 590 654 477 68 371 608')).to eq good }
    it { expect(good_vs_evil('431 852 572 64 30 958', '69 574 56 172 671 86 52')).to eq good }
    it { expect(good_vs_evil('712 590 17 804 632 117', '624 173 521 284 754 415 98')).to eq good }
    it { expect(good_vs_evil('454 758 659 759 973 469', '496 455 515 32 33 548 756')).to eq good }
    it { expect(good_vs_evil('434 284 15 19 699 565', '349 357 618 857 598 298 1')).to eq good }
    it { expect(good_vs_evil('15 613 899 568 370 418', '690 301 513 356 118 984 224')).to eq good }
    it { expect(good_vs_evil('192 355 844 985 617 743', '504 909 174 775 119 776 11')).to eq good }
    it { expect(good_vs_evil('265 758 829 763 361 916', '175 560 299 64 432 444 486')).to eq good }
    it { expect(good_vs_evil('835 321 278 946 671 946', '302 315 653 355 549 468 664')).to eq good }
    it { expect(good_vs_evil('511 642 606 675 466 824', '825 221 736 626 691 155 664')).to eq good }
    it { expect(good_vs_evil('21 522 950 458 887 290', '274 321 128 520 323 312 583')).to eq good }

    it { expect(good_vs_evil('1 1 1 1 1 1', '1 1 1 1 1 1 1')).to eq evil }
    it { expect(good_vs_evil('1 1 1 1 1 1', '0 1 1 1 1 1 1')).to eq evil }
    it { expect(good_vs_evil('1 0 0 0 0 0', '0 1 0 0 0 0 0')).to eq evil }
    it { expect(good_vs_evil('0 1 0 0 0 0', '0 0 0 0 1 0 0')).to eq evil }
    it { expect(good_vs_evil('179 872 42 536 44 650', '991 779 22 877 47 815 562')).to eq evil }
    it { expect(good_vs_evil('909 248 341 874 312 72', '790 480 618 954 243 626 374')).to eq evil }
    it { expect(good_vs_evil('830 55 258 226 261 227', '831 876 577 745 781 6 438')).to eq evil }
    it { expect(good_vs_evil('288 71 835 512 510 24', '807 676 179 165 569 146 800')).to eq evil }
    it { expect(good_vs_evil('17 1 513 685 65 857', '625 280 799 865 157 504 610')).to eq evil }
    it { expect(good_vs_evil('869 260 246 189 401 378', '41 826 818 746 393 705 95')).to eq evil }
    it { expect(good_vs_evil('712 840 679 785 686 443', '73 449 8 744 342 385 929')).to eq evil }
    it { expect(good_vs_evil('660 948 607 760 794 107', '292 646 886 201 608 773 957')).to eq evil }
    it { expect(good_vs_evil('611 3 582 367 801 518', '334 709 869 376 913 882 364')).to eq evil }
    it { expect(good_vs_evil('416 582 372 128 699 164', '382 669 661 302 1000 76 523')).to eq evil }
    it { expect(good_vs_evil('431 433 723 366 239 799', '946 812 861 40 478 783 969')).to eq evil }
    it { expect(good_vs_evil('96 803 676 89 234 154', '390 531 871 793 585 803 639')).to eq evil }
    it { expect(good_vs_evil('581 142 691 69 120 109', '800 758 972 643 983 1000 147')).to eq evil }
    it { expect(good_vs_evil('881 20 423 266 748 470', '804 748 800 692 141 992 410')).to eq evil }
    it { expect(good_vs_evil('571 310 832 242 185 209', '481 294 247 936 673 806 798')).to eq evil }
    it { expect(good_vs_evil('890 552 287 718 189 269', '720 60 672 609 742 252 446')).to eq evil }
    it { expect(good_vs_evil('741 877 365 606 750 528', '22 525 219 694 277 277 944')).to eq evil }
    it { expect(good_vs_evil('774 71 758 651 341 368', '951 28 873 492 712 339 478')).to eq evil }
    it { expect(good_vs_evil('1 528 153 263 216 479', '131 272 85 861 374 391 482')).to eq evil }
    it { expect(good_vs_evil('534 530 562 694 93 3', '727 427 908 841 604 592 946')).to eq evil }
    it { expect(good_vs_evil('344 164 708 18 586 17', '366 870 416 1 807 177 478')).to eq evil }
    it { expect(good_vs_evil('19 897 286 86 640 173', '33 311 92 309 838 404 750')).to eq evil }
    it { expect(good_vs_evil('215 713 197 29 625 212', '398 113 806 828 816 458 333')).to eq evil }
    it { expect(good_vs_evil('710 56 570 132 433 461', '226 557 114 234 481 349 713')).to eq evil }
    it { expect(good_vs_evil('682 873 895 3 254 382', '404 178 845 477 380 694 974')).to eq evil }
    it { expect(good_vs_evil('105 621 329 103 28 373', '86 90 752 801 145 919 323')).to eq evil }
    it { expect(good_vs_evil('171 141 441 372 310 963', '104 89 299 613 761 409 753')).to eq evil }
    it { expect(good_vs_evil('194 787 140 993 225 200', '136 327 44 377 324 665 330')).to eq evil }
    it { expect(good_vs_evil('117 914 182 831 461 638', '562 151 543 1 702 561 655')).to eq evil }
    it { expect(good_vs_evil('186 911 522 744 204 121', '129 38 703 769 124 42 679')).to eq evil }
    it { expect(good_vs_evil('51 841 640 295 388 670', '964 361 815 486 98 994 334')).to eq evil }
    it { expect(good_vs_evil('368 154 902 513 152 468', '33 457 766 127 966 430 660')).to eq evil }
    it { expect(good_vs_evil('847 373 848 15 313 247', '308 696 341 234 743 802 126')).to eq evil }
    it { expect(good_vs_evil('930 945 997 115 463 385', '657 471 629 377 888 546 363')).to eq evil }
    it { expect(good_vs_evil('349 841 657 336 104 421', '225 943 622 956 545 380 137')).to eq evil }
    it { expect(good_vs_evil('296 24 366 680 460 147', '766 781 749 721 68 893 992')).to eq evil }
    it { expect(good_vs_evil('529 116 331 763 673 401', '178 622 502 261 427 485 953')).to eq evil }
    it { expect(good_vs_evil('414 464 779 755 256 376', '518 7 192 19 961 961 266')).to eq evil }
    it { expect(good_vs_evil('231 130 985 960 86 412', '38 885 293 619 691 730 583')).to eq evil }
    it { expect(good_vs_evil('475 333 653 533 987 142', '121 729 149 414 605 907 497')).to eq evil }
    it { expect(good_vs_evil('61 565 917 244 161 72', '362 459 819 31 366 364 788')).to eq evil }
    it { expect(good_vs_evil('468 98 128 561 396 390', '343 326 34 117 903 815 410')).to eq evil }
    it { expect(good_vs_evil('711 980 295 290 680 22', '899 851 723 876 377 128 903')).to eq evil }
    it { expect(good_vs_evil('569 268 75 837 220 653', '162 974 422 62 274 526 912')).to eq evil }
    it { expect(good_vs_evil('553 202 195 294 999 425', '899 457 729 134 463 285 669')).to eq evil }
    it { expect(good_vs_evil('825 327 525 723 406 260', '804 20 555 846 499 36 751')).to eq evil }
    it { expect(good_vs_evil('875 107 499 475 948 166', '675 274 660 426 393 761 827')).to eq evil }
    it { expect(good_vs_evil('38 314 26 531 465 711', '654 0 426 129 239 307 893')).to eq evil }
    it { expect(good_vs_evil('993 136 246 879 85 182', '603 761 951 536 943 48 520')).to eq evil }
    it { expect(good_vs_evil('865 422 698 954 405 260', '725 226 123 83 351 601 916')).to eq evil }
    it { expect(good_vs_evil('129 693 512 926 23 461', '150 162 316 28 431 957 956')).to eq evil }
    it { expect(good_vs_evil('700 707 202 299 769 662', '914 67 59 606 183 828 743')).to eq evil }
    it { expect(good_vs_evil('809 599 606 535 167 585', '557 554 573 510 296 311 924')).to eq evil }
    it { expect(good_vs_evil('625 416 321 86 259 275', '31 165 123 329 536 978 582')).to eq evil }
  end
end
