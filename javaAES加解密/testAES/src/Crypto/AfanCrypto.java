package Crypto;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/*******************************************************************************
 * AES�ӽ����㷨
 * 
 * @author arix04
 * 
 */

public class AfanCrypto {

    // ����
    public static String Encrypt(String sSrc, String sKey) throws Exception {
        if (sKey == null) {
            System.out.print("KeyΪ��null");
            return null;
        }
        // �ж�Key�Ƿ�Ϊ16λ
        if (sKey.length() != 16) {
            System.out.print("Key���Ȳ���16λ");
            return null;
        }
        byte[] raw = sKey.getBytes();
        SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");//"�㷨/ģʽ/���뷽ʽ"
        IvParameterSpec iv = new IvParameterSpec("0102030405060708".getBytes());//ʹ��CBCģʽ����Ҫһ������iv�������Ӽ����㷨��ǿ��
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
        byte[] encrypted = cipher.doFinal(sSrc.getBytes());

        return new BASE64Encoder().encode(encrypted);//�˴�ʹ��BASE64��ת�빦�ܣ�ͬʱ����2�μ��ܵ����á�
    }

    // ����
    public static String Decrypt(String sSrc, String sKey) throws Exception {
        try {
            // �ж�Key�Ƿ���ȷ
            if (sKey == null) {
                System.out.print("KeyΪ��null");
                return null;
            }
            // �ж�Key�Ƿ�Ϊ16λ
            if (sKey.length() != 16) {
                System.out.print("Key���Ȳ���16λ");
                return null;
            }
            byte[] raw = sKey.getBytes("ASCII");
            SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            IvParameterSpec iv = new IvParameterSpec("0102030405060708"
                    .getBytes());
            cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
            byte[] encrypted1 = new BASE64Decoder().decodeBuffer(sSrc);//����base64����
            try {
                byte[] original = cipher.doFinal(encrypted1);
                String originalString = new String(original);
                return originalString;
            } catch (Exception e) {
                System.out.println(e.toString());
                return null;
            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
            return null;
        }
    }

    public static void main(String[] args) throws Exception {
        /*
         * �����õ�Key ������26����ĸ��������ɣ���ò�Ҫ�ñ����ַ�����Ȼ�����������ô�þ������˿��������
         * �˴�ʹ��AES-128-CBC����ģʽ��key��ҪΪ16λ��
         */
        String cKey = "1234567890123456";
        // ��Ҫ���ܵ��ִ�
        String cSrc = "this is a test";
        System.out.println(cSrc);
        // ����
        long lStart = System.currentTimeMillis();
        String enString = AfanCrypto.Encrypt(cSrc, cKey);
        System.out.println("���ܺ���ִ��ǣ�" + enString);

        long lUseTime = System.currentTimeMillis() - lStart;
        System.out.println("���ܺ�ʱ��" + lUseTime + "����");
        // ����
        lStart = System.currentTimeMillis();
        String DeString = AfanCrypto.Decrypt(enString, cKey);
        System.out.println("���ܺ���ִ��ǣ�" + DeString);
        lUseTime = System.currentTimeMillis() - lStart;
        System.out.println("���ܺ�ʱ��" + lUseTime + "����");
    }
}