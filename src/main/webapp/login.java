// Source code is decompiled from a .class file using FernFlower decompiler.
package com.loginDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class login {
   private String url = "jdbc:mysql://localhost:3306/gt";
   private String uname = "root";
   private String pass = "gtking";

   public login() {
   }

   public boolean loginUser(String var1, String var2) throws Exception {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection var3 = DriverManager.getConnection(this.url, this.uname, this.pass);

      boolean var6;
      try {
         PreparedStatement var4 = var3.prepareStatement("SELECT * FROM login WHERE uname=? AND password=?");

         try {
            var4.setString(1, var1);
            var4.setString(2, var2);
            ResultSet var5 = var4.executeQuery();

            try {
               var6 = var5.next();
            } catch (Throwable var11) {
               if (var5 != null) {
                  try {
                     var5.close();
                  } catch (Throwable var10) {
                     var11.addSuppressed(var10);
                  }
               }

               throw var11;
            }

            if (var5 != null) {
               var5.close();
            }
         } catch (Throwable var12) {
            if (var4 != null) {
               try {
                  var4.close();
               } catch (Throwable var9) {
                  var12.addSuppressed(var9);
               }
            }

            throw var12;
         }

         if (var4 != null) {
            var4.close();
         }
      } catch (Throwable var13) {
         if (var3 != null) {
            try {
               var3.close();
            } catch (Throwable var8) {
               var13.addSuppressed(var8);
            }
         }

         throw var13;
      }

      if (var3 != null) {
         var3.close();
      }

      return var6;
   }
}
