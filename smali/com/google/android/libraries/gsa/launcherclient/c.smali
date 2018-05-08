.class Lcom/google/android/libraries/gsa/launcherclient/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field CW:Ljava/lang/String;

.field aeq:F

.field aer:I

.field time:J

.field type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->type:I

    .line 113
    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->CW:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->aeq:F

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->time:J

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->aer:I

    .line 117
    return-void
.end method
