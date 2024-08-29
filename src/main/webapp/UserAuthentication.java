// Source code is decompiled from a .class file using FernFlower decompiler.
package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserAuthentication {
   private String url = "jdbc:mysql://localhost:3306/gt";
   private String uname = "root";
   private String pass = "gtking";

   public UserAuthentication() {
   }

   public boolean registerUser(String var1, String var2, String var3, String var4) throws Exception {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection var5 = DriverManager.getConnection(this.url, this.uname, this.pass);

      boolean var8;
      try {
         PreparedStatement var6 = var5.prepareStatement("insert into login (name, email, uname, password) values (?, ?, ?, ?)");

         try {
            var6.setString(1, var1);
            var6.setString(2, var2);
            var6.setString(3, var3);
            var6.setString(4, var4);
            int var7 = var6.executeUpdate();
            var8 = var7 > 0;
         } catch (Throwable var11) {
            if (var6 != null) {
               try {
                  var6.close();
               } catch (Throwable var10) {
                  var11.addSuppressed(var10);
               }
            }

            throw var11;
         }

         if (var6 != null) {
            var6.close();
         }
      } catch (Throwable var12) {
         if (var5 != null) {
            try {
               var5.close();
            } catch (Throwable var9) {
               var12.addSuppressed(var9);
            }
         }

         throw var12;
      }

      if (var5 != null) {
         var5.close();
      }

      return var8;
   }
}
