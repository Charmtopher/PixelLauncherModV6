.class public Lcom/android/launcher3/IconProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mSystemState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/IconProvider;
    .locals 2

    .line 15
    const-class v0, Lcom/android/launcher3/IconProvider;

    const v1, 0x7f0c0017

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconProvider;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/launcher3/IconProvider;->updateSystemStateString(Landroid/content/Context;)V

    .line 18
    return-object v0
.end method


# virtual methods
.method public getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/android/launcher3/IconProvider;->mSystemState:Ljava/lang/String;

    return-object p1
.end method

.method public final updateSystemStateString(Landroid/content/Context;)V
    .locals 1

    .line 25
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/IconProvider;->mSystemState:Ljava/lang/String;

    .line 32
    return-void
.end method
