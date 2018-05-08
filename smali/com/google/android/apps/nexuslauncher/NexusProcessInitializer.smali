.class public Lcom/google/android/apps/nexuslauncher/NexusProcessInitializer;
.super Lcom/android/quickstep/QuickstepProcessInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepProcessInitializer;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/android/quickstep/QuickstepProcessInitializer;->init(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    .line 22
    new-instance v0, Lcom/google/android/apps/nexuslauncher/g;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/g;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method
