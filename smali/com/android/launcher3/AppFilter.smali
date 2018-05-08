.class public Lcom/android/launcher3/AppFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/AppFilter;
    .locals 2

    .line 9
    const-class v0, Lcom/android/launcher3/AppFilter;

    const v1, 0x7f0c0016

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/AppFilter;

    return-object p0
.end method


# virtual methods
.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 0

    .line 13
    const/4 p1, 0x1

    return p1
.end method
