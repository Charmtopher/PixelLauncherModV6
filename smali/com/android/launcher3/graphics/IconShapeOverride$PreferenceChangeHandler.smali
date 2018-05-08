.class public Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 160
    check-cast p2, Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c006a

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 163
    invoke-static {p1, v1, v2, v3, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    .line 168
    new-instance p1, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 171
    :cond_0
    return v0
.end method
