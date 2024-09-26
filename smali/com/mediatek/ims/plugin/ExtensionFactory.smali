.class public Lcom/mediatek/ims/plugin/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# static fields
.field private static final EXTENSION_PLUG_IN_CLASS_PATH:Ljava/lang/String; = "/system_ext/framework/mediatek-ims-extension-plugin.jar"

.field private static final EXTENSION_PLUG_IN_NAME:Ljava/lang/String; = "com.mediatek.imsplugin.ExtensionPluginFactoryImpl"

.field public static final LOG_TAG:Ljava/lang/String; = "ImsExtensionFactory"

.field private static final OEM_PLUG_IN_CLASS_PATH:Ljava/lang/String; = "/system_ext/framework/mediatek-ims-oem-plugin.jar"

.field private static final OEM_PLUG_IN_NAME:Ljava/lang/String; = "com.mediatek.imsplugin.OemPluginFactoryImpl"

.field private static sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

.field private static sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    if-nez v0, :cond_1

    .line 118
    const-string v0, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsExtensionFactory"

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v2, "/system_ext/framework/mediatek-ims-extension-plugin.jar"

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 123
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string v2, "com.mediatek.imsplugin.ExtensionPluginFactoryImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 124
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 125
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 126
    .local v3, "inst":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    sput-object v3, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 127
    const-string v5, "Use MTK\'s ExtensionPluginFactory"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .end local v0    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "inst":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    if-nez v0, :cond_1

    .line 134
    const-string v0, "Use default ExtensionPluginFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 139
    :cond_1
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    return-object v0
.end method

.method public static makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .line 85
    const-string v0, "ImsExtensionFactory"

    sget-object v1, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    if-nez v1, :cond_0

    .line 88
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system_ext/framework/mediatek-ims-oem-plugin.jar"

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 90
    .local v1, "pathClassLoader":Ldalvik/system/PathClassLoader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathClassLoader = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v2, "com.mediatek.imsplugin.OemPluginFactoryImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 93
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 94
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 95
    .local v3, "instance":Lcom/mediatek/ims/plugin/OemPluginFactory;
    sput-object v3, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 96
    const-string v5, "Use customer\'s OemPluginFactory"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .end local v1    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "instance":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Use default OemPluginFactory"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/mediatek/ims/plugin/impl/OemPluginFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/OemPluginFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 106
    :cond_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    return-object v0
.end method
