.class public Lcom/android/launcher3/graphics/IconShapeOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAppliedValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_override_icon_shape"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigResId()I
    .locals 4

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_icon_mask"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSystemResField()Ljava/lang/reflect/Field;
    .locals 2

    .line 109
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mSystem"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    return-object v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 3

    .line 62
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_settings_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq v0, v0, :cond_1

    .line 68
    return v1

    .line 72
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getSystemResField()Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v2, :cond_2

    .line 74
    return v1

    .line 79
    :cond_2
    nop

    .line 81
    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getConfigResId()I

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1

    .line 76
    :catch_0
    move-exception p0

    .line 78
    return v1
.end method
