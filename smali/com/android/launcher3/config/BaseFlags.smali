.class abstract Lcom/android/launcher3/config/BaseFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "com.android.launcher3.settings"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/BaseFlags;->AUTHORITY:Ljava/lang/String;

    return-void
.end method
