.class public Lcom/android/launcher3/MainProcessInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 30
    const-class v0, Lcom/android/launcher3/MainProcessInitializer;

    const v1, 0x7f0c001d

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/MainProcessInitializer;

    .line 32
    invoke-virtual {v0, p0}, Lcom/android/launcher3/MainProcessInitializer;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->setDir(Ljava/io/File;)V

    .line 37
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getConfigResId()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;-><init>(Landroid/content/res/Resources;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getSystemResField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IconShapeOverride"

    const-string v2, "Unable to override icon shape"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_override_icon_shape"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/SessionCommitReceiver;->applyDefaultUserPrefs(Landroid/content/Context;)V

    .line 39
    return-void
.end method
