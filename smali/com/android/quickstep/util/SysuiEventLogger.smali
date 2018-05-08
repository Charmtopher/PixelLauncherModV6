.class public Lcom/android/quickstep/util/SysuiEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYSUI_MULTI_ACTION:I = 0x80004


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static write(Landroid/metrics/LogMaker;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 33
    :cond_0
    const v0, 0x80004

    invoke-virtual {p0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 34
    return-void
.end method

.method public static writeDummyRecentsTransition(J)V
    .locals 3

    .line 39
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x2f9

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 40
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 41
    const-string v1, "com.android.systemui.recents.RecentsActivity"

    const/16 v2, 0x367

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 43
    nop

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 43
    const/16 p1, 0x13f

    invoke-virtual {v0, p1, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 45
    invoke-static {v0}, Lcom/android/quickstep/util/SysuiEventLogger;->write(Landroid/metrics/LogMaker;)V

    .line 46
    return-void
.end method
