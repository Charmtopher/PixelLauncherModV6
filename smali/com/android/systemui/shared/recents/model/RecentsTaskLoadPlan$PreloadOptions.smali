.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public loadTitles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    return-void
.end method
