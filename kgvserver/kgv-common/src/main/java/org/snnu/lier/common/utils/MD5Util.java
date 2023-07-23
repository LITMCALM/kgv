package org.snnu.lier.common.utils;

import cn.hutool.Hutool;
import cn.hutool.crypto.digest.MD5;

import java.nio.charset.Charset;

public class MD5Util {
    public static void main(String[] args) {
        Hutool.printAllUtils();

        MD5 md5 = new MD5(new String("vBtmuh5Utid6okp5jOuiuA==").getBytes());
        System.out.println(md5.digestHex16("123456", Charset.defaultCharset()));

    }
}
