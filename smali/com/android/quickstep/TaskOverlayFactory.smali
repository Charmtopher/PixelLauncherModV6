.class public Lcom/android/quickstep/TaskOverlayFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/quickstep/TaskOverlayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/quickstep/TaskOverlayFactory;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/quickstep/TaskOverlayFactory;->sInstance:Lcom/android/quickstep/TaskOverlayFactory;

    if-nez v0, :cond_0

    .line 39
    const-class v0, Lcom/android/quickstep/TaskOverlayFactory;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0c0096

    .line 39
    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TaskOverlayFactory;

    sput-object p0, Lcom/android/quickstep/TaskOverlayFactory;->sInstance:Lcom/android/quickstep/TaskOverlayFactory;

    .line 42
    :cond_0
    sget-object p0, Lcom/android/quickstep/TaskOverlayFactory;->sInstance:Lcom/android/quickstep/TaskOverlayFactory;

    return-object p0
.end method


# virtual methods
.method public createOverlay(Landroid/view/View;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 0

    .line 46
    new-instance p1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>()V

    return-object p1
.end method
