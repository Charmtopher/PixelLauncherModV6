.class public Lcom/android/quickstep/OverviewCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/quickstep/OverviewCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/quickstep/OverviewCallbacks;
    .locals 2

    .line 32
    sget-object v0, Lcom/android/quickstep/OverviewCallbacks;->sInstance:Lcom/android/quickstep/OverviewCallbacks;

    if-nez v0, :cond_0

    .line 34
    const-class v0, Lcom/android/quickstep/OverviewCallbacks;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0c0097

    .line 34
    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/OverviewCallbacks;

    sput-object p0, Lcom/android/quickstep/OverviewCallbacks;->sInstance:Lcom/android/quickstep/OverviewCallbacks;

    .line 37
    :cond_0
    sget-object p0, Lcom/android/quickstep/OverviewCallbacks;->sInstance:Lcom/android/quickstep/OverviewCallbacks;

    return-object p0
.end method


# virtual methods
.method public onInitOverviewTransition()V
    .locals 0

    .line 40
    return-void
.end method

.method public onResetOverview()V
    .locals 0

    .line 42
    return-void
.end method
